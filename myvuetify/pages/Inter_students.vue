<template>
  <v-data-table
    :headers="headers"
    :items="stulist"
    sort-by="calories"
    class="elevation-1"
  >
    <template v-slot:top>
      <v-toolbar flat>
        <v-toolbar-title>Interstudents</v-toolbar-title>
        <v-divider class="mx-4" inset vertical></v-divider>
        <v-spacer></v-spacer>
        <v-dialog v-model="dialog" max-width="800px">
          <template v-slot:activator="{ on, attrs }">
            <v-btn color="#2E8B57" dark class="mb-2" v-bind="attrs" v-on="on">
              New Student
            </v-btn>
          </template>
          <v-card>
            <v-card-title>
              <span class="text-h5">{{ formTitle }}</span>
            </v-card-title>

            <v-card-text>
              <v-container>
                <v-row>
                  <v-col cols="12" sm="6" md="2">
                    <v-select
                      v-model="editedItem.title"
                      :items="['Ms', 'Mr']"
                      label="Title"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="5">
                    <v-text-field
                      v-model="editedItem.first_name"
                      label="Firstname"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="5">
                    <v-text-field
                      v-model="editedItem.last_name"
                      label="Lastname"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="1">
                    <v-text-field
                      v-model="editedItem.number"
                      label="No"
                      required
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="3">
                    <v-text-field
                      v-model="editedItem.applicant_no"
                      label="Applicant_no"
                      required
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="8">
                    <v-text-field
                      v-model="editedItem.middle_name"
                      label="Middlename"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-select
                      v-model="editedItem.type"
                      :items="['Full Time', 'Scholarship']"
                      label="Type"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-select
                      v-model="editedItem.subtype"
                      :items="[
                        'Normal',
                        'Agent-Moon',
                        'Agent-Tu (Aum)',
                        'Agent-AEC',
                        'Agent-Tu(Aum)',
                        'RE-ID',
                        'Agent-Pee(U Tin Wln)',
                        'Agent-Sai Seng Sai',
                        'Full Scholarship',
                        'Partial Scholarship',
                        'Agent-Suhana',
                        'Agent-Bonnie',
                        'Agent-Paul',
                      ]"
                      label="Subtype"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.academic_year"
                      label="Academic_Year"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-select
                      v-model="editedItem.result"
                      :items="[
                        'Accepted',
                        'Accepted but Student Cancel',
                        'Accepted with Conditions',
                        'Student Cancel',
                        'Postpone to 2/2020',
                        'Postpone to 1/2021',
                        'Reject',
                      ]"
                      label="Result"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.conditions"
                      label="Condition"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-select
                      v-model="editedItem.english_type"
                      :items="[
                        'TOEFL(iBT)',
                        'IELTS',
                        'TOEFL(ITP)Level 1',
                        'CU-TEP',
                        'CMU-eTEGS',
                        'MFU-TEP',
                      ]"
                      label="English Type"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.english_score"
                      label="English Score"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.country"
                      label="Country"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.city"
                      label="City"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="6">
                    <v-select
                      v-model="editedItem.school"
                      :items="[
                        'Management',
                        'Science Cosmetic',
                        'Informetion Technology',
                        'Liberal Arts',
                        'Sinology',
                        'Science',
                        'Health Science',
                        'Anti-Aging and Regenerative Medicine',
                        'Social Innovation',
                        'Law',
                        'Integrative Medicine',
                      ]"
                      label="School"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="6">
                    <v-select
                      v-model="editedItem.programme"
                      :items="[
                        'B.B.A. in Tourism Management',
                        'B.B.A. in Aviation Business Management (Aviation Services)',
                        'B.B.A. in Business Administration',
                        'B.Sc. in Cosmetic Science',
                        'B.Sc. in Computer Science and Innovation',
                        'B.Eng. in Computer Engineering',
                        'B.Sc. in Software Engineering',
                        'B.B.A. in Hospitality Industry Management',
                        'B.B.A. in Aviation Business Management (Aviation Operations)',
                        'B.Acc. in Accounting',
                        'B.Sc. in Multimedia Technology and Animation',
                        'B.Sc. in Information Technology',
                        'B.A. in English',
                        'B.Sc. in Postharvest Technology',
                        'B.Sc. in Food Science and Technology',
                        'B.A. in Chinese Language and Culture',
                        'B.A. in Thai Language and Culture for Foreigners',
                        'B.Econ. in Economics',
                        'B.Sc. in Biotechnology',
                        'B.Sc. in Applied Chemistry',
                        'B.P.H. in Public Health',
                        'M.Sc. in Anti-Aging and Regenerative Medicine',
                        'M.Sc. in Dermatology',
                        'M.B.A. in International Logistics and Supply Chain Management',
                        'M.Sc. in Public Health',
                        'M.A. in English for Professional Development',
                        'M.B.A. in Business Administration',
                        'M.Sc. in Information Technology',
                        'M.Sc. in Food Science and Technology',
                        'M.A. in International Development',
                        'Ph.D. in English for Professional Development',
                        'Ph.D. in Biological Science',
                        'Ph.D. in Food Science and Technology',
                        'B.Sc. in Sports and Health Science',
                        'B.A. in Business Chinese',
                        'B.A. in International Development',
                        'B.B.A. in Logistics and Supply Chain Management',
                        'B.PT. in Physical Therapy',
                        'B.Sc. in Beauty Technology',
                        'B.B.A. in Aviation Business Management (International Aviation Logistics Business)',
                        'M.Sc. in Anti-Aging and Regenerative Science',
                        'M.Sc. in Biological Science',
                        'M.Sc. in Cosmetic Science',
                        'Ph.D. in Business Administration',
                        'M.Sc. in Computational Science',
                        'M.PH. in Border Health Management',
                        'LL.M. in Laws',
                        'M.Sc. in Applied Chemistry',
                        'M.Sc. in Postharvest Technology and Innovation',
                        'B.Sc. in Occupational Health and Safety',
                        'B.Sc. in Environmental Health',
                        'B.Eng. in Materials Engineering',
                        'M.Eng. in Computer Engineering',
                        'Ph.D. in Materials Innovation',
                        'Ph.D. in Computer Engineering',
                        'B.Sc. in Digital Technology for Business Innovation',
                        'B.CM. in Traditional Chinese Medicine',
                        'M.Sc. in Materials Innovation',
                        'Ph.D. in Cosmetic Science',
                        'Ph.D. in Applied Chemistry',
                        'Ph.D. in Computational Science',
                      ]"
                      label="Programme"
                      required
                    ></v-select>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.degree"
                      column
                      label="Degree"
                    >
                      <v-radio
                        label="Bachelors Degree"
                        value="Bachelor's Degree"
                      ></v-radio>
                      <v-radio
                        label="Masters Degree"
                        value="Master's Degree"
                      ></v-radio>
                      <v-radio
                        label="Doctoral Degree"
                        value="Doctoral Degree"
                      ></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_online"
                      column
                      label="News_Online"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_embassy"
                      column
                      label="News_Embassy"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_university"
                      column
                      label="News_University"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_exhibition"
                      column
                      label="News_Exhibition"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_newsletter"
                      column
                      label="News_Newsletter"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_friend"
                      column
                      label="News_Friend"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.news_agent"
                      column
                      label="News_Agent"
                    >
                      <v-radio label="TRUE" value="TRUE"></v-radio>
                      <v-radio label="FALSE" value="FALSE"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-radio-group
                      v-model="editedItem.gender"
                      column
                      label="Gender"
                    >
                      <v-radio label="Male" value="M"></v-radio>
                      <v-radio label="Female" value="F"></v-radio>
                    </v-radio-group>
                  </v-col>
                  <v-col cols="12" sm="6">
                    <v-text-field
                      v-model="editedItem.contact_email"
                      label="Contact_Email"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6">
                    <v-text-field
                      v-model="editedItem.contact_phone"
                      label="Contact_Phone"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6">
                    <v-text-field
                      v-model="editedItem.contact_facebook"
                      label="Contact_Facebook"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6">
                    <v-text-field
                      v-model="editedItem.contact_other"
                      label="Contact_Other"
                    ></v-text-field>
                  </v-col>
                </v-row>
              </v-container>
            </v-card-text>

            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="#2E8B57" text @click="close"> Cancel </v-btn>
              <v-btn color="#2E8B57" text @click="save"> Save </v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <v-dialog v-model="dialogDelete" max-width="500px">
          <v-card>
            <v-card-title class="text-h5"
              >Are you sure you want to delete this item?</v-card-title
            >
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="blue darken-1" text @click="closeDelete"
                >Cancel</v-btn
              >
              <v-btn color="blue darken-1" text @click="deleteItemConfirm"
                >OK</v-btn
              >
              <v-spacer></v-spacer>
            </v-card-actions>
          </v-card>
        </v-dialog>
      </v-toolbar>
    </template>
    <template v-slot:item.actions="{ item }">
      <v-icon small class="mr-2" @click="editItem(item)"> mdi-pencil </v-icon>
      <v-icon small @click="deleteItem(item)"> mdi-delete </v-icon>
    </template>
    <template v-slot:no-data>
      <v-btn color="blue darken-1" @click="initialize"> Reset </v-btn>
    </template>
  </v-data-table>
</template>

<script>
const url = "http://localhost:5000/api/inter_students";

export default {
  data: () => ({
    dialog: false,
    dialogDelete: false,
    headers: [
      { text: "Applicant_No", value: "applicant_no" },
      { text: "Type", value: "type" },
      { text: "Subtype", value: "subtype" },
      { text: "Academic_Year", value: "academic_year" },
      { text: "Result", value: "result" },
      { text: "Condition", value: "conditions" },
      { text: "English Type", value: "english_type" },
      { text: "English Score", value: "english_score" },
      { text: "Title", value: "title" },
      { text: "Firstname", value: "first_name" },
      { text: "Middlename", value: "middle_name" },
      { text: "Lastname", value: "last_name" },
      { text: "Gender", value: "gender" },
      { text: "Country", value: "country" },
      { text: "City", value: "city" },
      { text: "School", value: "school" },
      { text: "Degree", value: "degree" },
      { text: "Programme", value: "programme" },
      { text: "News_Online", value: "news_online" },
      { text: "News_Embassy", value: "news_embassy" },
      { text: "News_University", value: "news_university" },
      { text: "News_Exhibition", value: "news_exhibition" },
      { text: "News_Newsletter", value: "news_newsletter" },
      { text: "News_Friend", value: "news_friend" },
      { text: "News_Agent", value: "news_agent" },
      { text: "Contact_Email", value: "contact_email" },
      { text: "Contact_Phone", value: "contact_phone" },
      { text: "Contact_Facebook", value: "contact_facebook" },
      { text: "Contact_Other", value: "contact_other" },
      { text: "No", value: "number" },
      { text: "Actions", value: "actions", sortable: false },
    ],
    stulist: [],
    editedIndex: -1,
    editedItem: {
      applicant_no: "",
      type: "",
      subtype: "",
      academic_year: "",
      result: "",
      conditions: "",
      english_type: "",
      english_score: "",
      title: "",
      first_name: "",
      middle_name: "",
      last_name: "",
      gender: "",
      country: "",
      city: "",
      school: "",
      degree: "",
      programme: "",
      news_online: "",
      news_embassy: "",
      news_university: "",
      news_exhibition: "",
      news_newsletter: "",
      news_friend: "",
      news_agent: "",
      contact_email: "",
      contact_phone: "",
      contact_facebook: "",
      contact_other: "",
      number: "",
    },
    defaultItem: {
      applicant_no: "",
      type: "",
      subtype: "",
      academic_year: "",
      result: "",
      conditions: "",
      english_type: "",
      english_score: "",
      title: "",
      first_name: "",
      middle_name: "",
      last_name: "",
      gender: "",
      country: "",
      city: "",
      school: "",
      degree: "",
      programme: "",
      news_online: "",
      news_embassy: "",
      news_university: "",
      news_exhibition: "",
      news_newsletter: "",
      news_friend: "",
      news_agent: "",
      contact_email: "",
      contact_phone: "",
      contact_facebook: "",
      contact_other: "",
      number: "",
    },
  }),

  computed: {
    formTitle() {
      return this.editedIndex === -1 ? "New Student" : "Edit";
    },
  },

  watch: {
    dialog(val) {
      val || this.close();
    },
    dialogDelete(val) {
      val || this.closeDelete();
    },
  },

  created() {
    this.initialize();
  },

  methods: {
    async initialize() {
      const res = await this.$axios.get(url);
      this.stulist = res.data.response;
    },

    editItem(item) {
      this.editedIndex = this.stulist.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    },

    deleteItem(item) {
      this.editedIndex = this.stulist.indexOf(item);
      this.editedItem = Object.assign({}, item);
      console.log(this.editedItem.applicant_no);
      this.dialogDelete = true;
    },

    async deleteItemConfirm() {
      const delurl = url + "/" + this.editedItem.applicant_no;
      try {
        const res = await this.$axios.delete(delurl);
        this.stulist.splice(this.editedIndex, 1);
      } catch (e) {
        console.log(e);
      }
      this.closeDelete();
    },

    close() {
      this.dialog = false;
      this.$nextTick(() => {
        this.editedItem = Object.assign({}, this.defaultItem);
        this.editedIndex = -1;
      });
    },

    closeDelete() {
      this.dialogDelete = false;
      this.$nextTick(() => {
        this.editedItem = Object.assign({}, this.defaultItem);
        this.editedIndex = -1;
      });
    },
///////////////////////////////////////////-------
    async save() {
      if (this.editedIndex > -1) {
        const puturl = url + "/" + this.editedItem.applicant_no;
        Object.assign(this.stulist[this.editedIndex], this.editedItem);
        try {
          const res = await this.$axios.put(puturl, this.editedItem);
        } catch (e) {
          console.log(e);
        }
        //Put API here
      } else {
        this.stulist.push(this.editedItem);
        try {
          const res = await this.$axios.post(url, this.editedItem);
          this.initialize();
        } catch (e) {
          console.log(e);
        }

        //POST API
      }
      this.close();
    },
  },
};
</script>
