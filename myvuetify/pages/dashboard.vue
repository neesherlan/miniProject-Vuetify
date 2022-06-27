<template>
  <div>
    <h1>Dashboard</h1>
    <div class="container">
      <v-row>
        <v-col cols="12" md="3">
          <v-card>
            <doughnut-chart
              v-if="type_loaded"
              :doughnutchartdata="type_apidata"
              :doughnutchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
        <v-col cols="12" md="3">
          <v-card>
            <doughnut-chart
              v-if="subtype_loaded"
              :doughnutchartdata="subtype_apidata"
              :doughnutchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
        <v-col cols="12" md="6">
          <v-card>
            <bar-chart
              v-if="school_loaded"
              :barchartdata="school_apidata"
              :barchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
      </v-row>
      <v-row>
        <v-col cols="12" md="9">
          <v-card>
            <line-chart
              v-if="score_loaded"
              :linechartdata="score_apidata"
              :linechartoptions="chartoptions"
            />
          </v-card>
        </v-col>
        <v-col cols="12" md="3">
          <v-card>
            <doughnut-chart
              v-if="result_loaded"
              :doughnutchartdata="result_apidata"
              :doughnutchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
      </v-row>
      <v-row>
        <v-col cols="12" md="6">
          <v-card>
            <bar-chart
              v-if="country_loaded"
              :barchartdata="country_apidata"
              :barchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
        <v-col cols="12" md="6">
          <v-card>
            <bar-chart
              v-if="academic_loaded"
              :barchartdata="academic_apidata"
              :barchartoptions="chartoptions"
            />
          </v-card>
        </v-col>
      </v-row>
      <v-row>
        <v-col cols="12">
          <v-card>
            <line-chart
              v-if="programme_loaded"
              :linechartdata="programme_apidata"
              :linechartoptions="chartoptions"
            />
          </v-card>
        </v-col>
      </v-row>
    </div>
  </div>
</template>

<script>
const url = "http://localhost:5000/api/inter_students";
const sumsal_url = "http://localhost:5000/api/sum_applicant";
const happy_url = "http://localhost:5000/api/subtype_applicant";
const academic_url = "http://localhost:5000/api/academicyeah";
const score_url = "http://localhost:5000/api/score";
const country_url = "http://localhost:5000/api/country";
const result_url = "http://localhost:5000/api/result";
const school_url = "http://localhost:5000/api/school";
const programme_url = "http://localhost:5000/api/programme";
export default {
  data() {
    return {
      loaded: false,
      apidata: {
        labels: [],
        datasets: [],
      },
      type_loaded: false,
      type_apidata: {
        labels: [],
        datasets: [],
      },
      subtype_loaded: false,
      subtype_apidata: {
        labels: [],
        datasets: [],
      },
      academic_loaded: false,
      academic_apidata: {
        labels: [],
        datasets: [],
      },
      score_loaded: false,
      score_apidata: {
        labels: [],
        datasets: [],
      },
      country_loaded: false,
      country_apidata: {
        labels: [],
        datasets: [],
      },
      result_loaded: false,
      result_apidata: {
        labels: [],
        datasets: [],
      },
      school_loaded: false,
      school_apidata: {
        labels: [],
        datasets: [],
      },
      programme_loaded: false,
      programme_apidata: {
        labels: [],
        datasets: [],
      },

      chartoptions: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          yAxes: [
            {
              ticks: {
                beginAtZero: true,
              },
            },
          ],
        },
      },
    };
  },
  methods: {
    async getsum_applicant() {
      this.type_loaded = false;
      try {
        const res = await this.$axios.get(sumsal_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.type);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "Type",
              backgroundColor: ["#d2b48c", "#e6a9a3"],
              data: tempdata,
            },
          ],
        };
        this.type_apidata = tempAPIdata;
        this.type_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getsubtype_applicant() {
      this.subtype_loaded = false;
      try {
        const res = await this.$axios.get(happy_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.subtype);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "Subtype",
              backgroundColor: [
                "#d2b48c",
                "#f7e6e1",
                "#aba8a2",
                "#756359",
                "#9c7f7c",
                "#e6a9a3",
                "#f0d0cc",
              ],
              data: tempdata,
            },
          ],
        };
        this.subtype_apidata = tempAPIdata;
        this.subtype_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getacademic_applicant() {
      this.academic_loaded = false;
      try {
        const res = await this.$axios.get(academic_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.academic_year);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "academic_year",
              backgroundColor: [
                "#f7e6e1",
                "#f0d0cc",
                "#e6a9a3",
                "#9c7f7c",
                "#756359",
                "#aba8a2",
                "#d2b48c",
              ],
              data: tempdata,
            },
          ],
        };
        this.academic_apidata = tempAPIdata;
        this.academic_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getscore_applicant() {
      this.score_loaded = false;
      try {
        const res = await this.$axios.get(score_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.english_score);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "English Score",
              backgroundColor: "rgb(117, 99, 89, 0.5)",
              borderColor: "rgb(117, 99, 89)",
              data: tempdata,
            },
          ],
        };
        this.score_apidata = tempAPIdata;
        this.score_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getcountry_applicant() {
      this.country_loaded = false;
      try {
        const res = await this.$axios.get(country_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.country);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "country",
              backgroundColor: [
                "#f7e6e1",
                "#f0d0cc",
                "#e6a9a3",
                "#9c7f7c",
                "#756359",
                "#aba8a2",
                "#d2b48c",
                "#a99488",
                "#8b8e7c",
                "#a38166",
                "#dac6a3",
                "#f6eee0",
                "#c1d7d0",
                "#",
              ],
              data: tempdata,
            },
          ],
        };
        this.country_apidata = tempAPIdata;
        this.country_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getresult_applicant() {
      this.result_loaded = false;
      try {
        const res = await this.$axios.get(result_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.result);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "result",
              backgroundColor: ["#d2b48c",
                "#f7e6e1",
                "#aba8a2",
                "#756359",
                "#9c7f7c",
                "#e6a9a3",
                "#f0d0cc",],
              data: tempdata,
            },
          ],
        };
        this.result_apidata = tempAPIdata;
        this.result_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getschool_applicant() {
      this.school_loaded = false;
      try {
        const res = await this.$axios.get(school_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.school);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "school",
              backgroundColor: [
                "#d2b48c",
                "#f7e6e1",
                "#aba8a2",
                "#756359",
                "#9c7f7c",
                "#e6a9a3",
                "#f0d0cc",
                "#f6eee0",
                "#c1d7d0",
              ],
              data: tempdata,
            },
          ],
        };
        this.school_apidata = tempAPIdata;
        this.school_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
    async getprogramme_applicant() {
      this.programme_loaded = false;
      try {
        const res = await this.$axios.get(programme_url);
        //console.log(res.data.response);
        var results = res.data.response;
        var templabels = [],
          tempdata = [];
        results.forEach(function (x) {
          templabels.push(x.programme);
          tempdata.push(x.sum_no);
        });
        // console.log(templabels);
        var tempAPIdata = {
          labels: templabels,
          datasets: [
            {
              label: "Programme",
              backgroundColor: "rgb(176, 130, 130, 0.5)",
              borderColor: "rgb(176, 130, 130)",
              data: tempdata,
            },
          ],
        };
        this.programme_apidata = tempAPIdata;
        this.programme_loaded = true;
      } catch (e) {
        console.error(e);
      }
    },
  },
  mounted() {
    this.getsum_applicant();
    this.getsubtype_applicant();
    this.getacademic_applicant();
    this.getscore_applicant();
    this.getcountry_applicant();
    this.getresult_applicant();
    this.getschool_applicant();
    this.getprogramme_applicant();
  },
};
</script>