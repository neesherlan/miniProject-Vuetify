<template>
  <v-card color="basil">
    <v-card-title class="text-center justify-center py-0">
      <pre><h1 class="font-weight-bold text-h2 basil--text">
        INFORMATiONS

        FOR iNTER STUDENTS
      </h1>
      </pre>
    </v-card-title>
    <v-tabs v-model="tab" background-color="transparent" color="basil" grow>
      <v-tab v-for="item in items" :key="item.tab">
        {{ item.tab }}
      </v-tab>
    </v-tabs>

    <v-tabs-items
      v-model="tab"
      background-color="transparent"
      color="basil"
      grow
    >
      <v-tab-item>
        <v-card flat>
          <v-carousel hide-delimiters>
            <v-carousel-item
              v-for="(item, i) in calo"
              :key="i"
              :src="item.src"
            ></v-carousel-item>
          </v-carousel>
          <v-card-title class="text-h5"> History </v-card-title>
          <v-card-text>
            <p>
              Mae Fah Luang University (MFU) was established as an autonomous
              public university, under the Royal Charter, in 1998, with generous
              support from the Royal Thai Government. The University was
              established to meet the needs of people in the north of Thailand,
              and to commemorate the gracious contributions of the King's
              Mother, Her Royal Highness Princess Srinagarindra, lovingly known
              to her subjects as "Mae Fah Luang." From its inaugural class of 64
              students in 1998, MFU has become Thailand's fastest growing
              post-secondary institution with an enrollment of just under 15,000
              students. After little over a decade of operation, MFU is already
              well known for its high-quality teaching, research, and service to
              the people of the north, as well as Thailand. Mae Fah Luang
              Unviersity's campus consists of a large complex of modern,
              state-of-the-art buildings, spanning more than 800 hectares. The
              campus is located in a spectacular setting of mountains and trees,
              an environment conducive to teaching and learning in a clean,
              inviting setting. As both a regional and national university, MFU
              provides high-quality education services and resources for the
              neighboring countries of the Greater Mekhong Sub-region (GMS), and
              reaches out to all of Southeast Asia.
            </p>
          </v-card-text>
          <v-card-title class="text-h5"> Philosophy </v-card-title>
          <v-card-text>
            MFU follows the aspiration of Her Royal Highness Princess
            Srinagarindra to "restore forests and develop people", and striving
            to "developing people; cultivating knowledge; instilling quality;
            upholding virtues; and conserving the environment".
          </v-card-text>
          <v-card-title class="text-h5"> Vision </v-card-title>
          <v-card-text>
            A Leading University in ASEAN with International Recognition
          </v-card-text>
          <v-card-title class="text-h5"> Mission </v-card-title>
          <v-card-text>
            To produce quality human resources and develop excellence in
            academics, research, and innovations for the society under
            disruptions to achieve the Sustainable Development Goals in
            accordance with Thailand’s development.
          </v-card-text>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <v-card-title class="text-h9"> School Map </v-card-title>
          <v-card-text>
            <iframe
              src="https://www.google.com/maps/embed?pb=!4v1637411080241!6m8!1m7!1sESaAFkuql9qfnd7Jqbco7Q!2m2!1d20.04534292725682!2d99.88957968165202!3f84.7!4f-1.4099999999999966!5f0.7820865974627469"
              width="100%"
              height="600"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
            ></iframe>
            <img
              src="https://en.mfu.ac.th/fileadmin/_processed_/0/b/csm_AW-MFU_MAP_2021-02_b721603e22.png"
              alt="mfu map"
              width="100%"
            />
          </v-card-text>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat tile>
          <v-card-title class="text-h5"> Presentation </v-card-title>
          <v-container class="lighten-4" fluid>
            <v-row>
              <v-col cols="12" sm="6">
                <v-card>
                  <iframe
                    width="100%"
                    height="400px"
                    src="https://www.youtube.com/embed/p7AVMygCTWs"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                  ></iframe>
                  <v-card-actions class="white justify-center">
                    <v-card flat>
                      <v-card-text>
                        VDO MFU 2020 presentation Final English version
                      </v-card-text>
                    </v-card>
                  </v-card-actions>
                </v-card>
              </v-col>
              <v-col cols="12" sm="6">
                <v-card>
                  <iframe
                    width="100%"
                    height="400px"
                    src="https://www.youtube.com/embed/abF2WkbHGt0"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                  ></iframe>
                  <v-card-actions class="white justify-center">
                    <v-card flat>
                      <v-card-text>
                        MFU: International University for U
                      </v-card-text>
                    </v-card>
                  </v-card-actions>
                </v-card>
              </v-col>
              <v-col cols="12" sm="6">
                <v-card>
                  <iframe
                    width="100%"
                    height="400px"
                    src="https://www.youtube.com/embed/Kqi_yfyuroM"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                  ></iframe>
                  <v-card-actions class="white justify-center">
                    <v-card flat>
                      <v-card-text> Education Hub for U </v-card-text>
                    </v-card>
                  </v-card-actions>
                </v-card>
              </v-col>
              <v-col cols="12" sm="6">
                <v-card>
                  <iframe
                    width="100%"
                    height="400px"
                    src="https://www.youtube.com/embed/F2m6WOLqO3Q"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                  ></iframe>
                  <v-card-actions class="white justify-center">
                    <v-card flat>
                      <v-card-text> Campus Life for U </v-card-text>
                    </v-card>
                  </v-card-actions>
                </v-card>
              </v-col>
            </v-row>
          </v-container>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <v-card-title class="text-h5"> Programme </v-card-title>
          <v-card-text>
            <v-row>
              <v-col col="12" md="3">
                <ul class="text-h6">
                  <li>B.B.A. in Tourism Management</li>
                  <li>
                    B.B.A. in Aviation Business Management (Aviation Services)
                  </li>
                  <li>B.B.A. in Business Administration</li>
                  <li>B.Sc. in Cosmetic Science</li>
                  <li>B.Sc. in Computer Science and Innovation</li>
                  <li>B.Eng. in Computer Engineering</li>
                  <li>B.B.A. in Hospitality Industry Management</li>
                  <li>
                    B.B.A. in Aviation Business Management (Aviation Operations)
                  </li>
                  <li>B.Acc. in Accounting</li>
                  <li>B.Sc. in Multimedia Technology and Animation</li>
                </ul>
              </v-col>
              <v-col col="12" md="3">
                <ul class="text-h6">
                  <li>B.Sc. in Information Technology</li>
                  <li>B.Sc. in Postharvest Technology</li>
                  <li>B.Sc. in Food Science and Technology</li>
                  <li>B.A. in Chinese Language and Culture</li>
                  <li>B.A. in Thai Language and Culture for Foreigners</li>
                  <li>B.Econ. in Economics</li>
                  <li>B.Sc. in Applied Chemistry'</li>
                  <li>B.P.H. in Public Health</li>
                  <li>M.Sc. in Anti-Aging and Regenerative Medicine</li>
                  <li>M.Sc. in Dermatology</li>
                </ul>
              </v-col>
              <v-col col="12" md="3">
                <ul class="text-h6">
                  <li>
                    M.B.A. in International Logistics and Supply Chain
                    Management
                  </li>
                  <li>M.Sc. in Public Health</li>
                  <li>M.A. in English for Professional Development</li>
                  <li>M.B.A. in Business Administration</li>
                  <li>M.Sc. in Information Technology</li>
                  <li>M.Sc. in Food Science and Technology</li>
                  <li>M.A. in International Development</li>
                  <li>Ph.D. in English for Professional Development</li>
                  <li>Ph.D. in Biological Science</li>
                  <li>Ph.D. in Food Science and Technology'</li>
                </ul>
              </v-col>
              <v-col col="12" md="3">
                <ul class="text-h6">
                  <li>B.Sc. in Sports and Health Science</li>
                  <li>B.A. in Business Chinese</li>
                  <li>B.A. in International Development</li>
                  <li>B.B.A. in Logistics and Supply Chain Management</li>
                  <li>B.PT. in Physical Therapy</li>
                  <li>B.Sc. in Beauty Technology</li>
                  <li>
                    B.B.A. in Aviation Business Management (International
                    Aviation Logistics Business)
                  </li>
                  <li>M.Sc. in Anti-Aging and Regenerative Science</li>
                  <li>M.Sc. in Biological Science</li>
                  <li>M.Sc. in Cosmetic Science</li>
                  <li>Ph.D. in Business Administratio</li>
                </ul>
              </v-col>
            </v-row>
          </v-card-text>
        </v-card>
      </v-tab-item>
    </v-tabs-items>
  </v-card>
</template>
<script>
export default {
  data() {
    return {
      tab: null,
      calo: [
        {
          src: "/img/mfu1.jpg",
        },
        {
          src: "/img/mfu2.jpg",
        },
        {
          src: "/img/mfu3.jpg",
        },
        {
          src: "/img/mfu4.jpg",
        },
        {
          src: "/img/mfu5.jpg",
        },
        {
          src: "/img/mfu6.jpg",
        },
        {
          src: "/img/mfu7.jpg",
        },
        {
          src: "/img/mfu8.jpg",
        },
      ],
      items: [
        { tab: "About" },
        { tab: "School" },
        { tab: "Presentation" },
        { tab: "Programme" },
      ],
    };
  },
};
</script>
<style>
.basil {
  background-color: #f3dede !important;
}
.basil--text {
  color: #356859 !important;
}
</style>