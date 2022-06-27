<template>
  <v-timeline :dense="$vuetify.breakpoint.smAndDown">
    <v-timeline-item
      color="purple lighten-2"
      fill-dot
      right
    >
      <v-card>
        <v-card-title class="purple lighten-2">
          <v-icon
            dark
            size="42"
            class="mr-4"
          >
            mdi-magnify
          </v-icon>
          <h2 class="text-h4 white--text font-weight-light">
            10 Nov 2021
          </h2>
        </v-card-title>
        <v-container>
          <v-row>
            <v-col
              cols="12"
              md="10"
            ><ul>
              <li>Project Assignment</li>
              <li>create a group</li>
            </ul>
            </v-col>
            <v-col
              class="hidden-sm-and-down text-right"
              md="2"
            >
              <v-icon size="64">
                mdi-calendar-text
              </v-icon>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-timeline-item>

    <v-timeline-item
      color="amber lighten-1"
      fill-dot
      left
      small
    >
      <v-card>
        <v-card-title class="amber lighten-1 justify-end">
          <h2 class="text-h4 mr-4 white--text font-weight-light">
            15 Nov 2021
          </h2>
          <v-icon
            dark
            size="42"
          >
            mdi-home-outline
          </v-icon>
        </v-card-title>
        <v-container>
          <v-row>
            <v-col
              cols="12"
              md="10"
            ><ul>
              <li>Design structure of front-end</li>
              <li>Outline the structure</li>
            </ul>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-timeline-item>

    <v-timeline-item
      color="cyan lighten-1"
      fill-dot
      right
    >
      <v-card>
        <v-card-title class="cyan lighten-1">
          <v-icon
            class="mr-4"
            dark
            size="42"
          >
            mdi-email-outline
          </v-icon>
          <h2 class="text-h4 white--text font-weight-light">
            17 - 23 Nov 2021
          </h2>
        </v-card-title>
        <v-container>
          <v-row>
            <v-col
              cols="12"
              md="10"
            ><ul>
              <li>Project Progress1 + Consultation</li>
              <li>Start run Front-end and Back-end</li>
            </ul>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-timeline-item>

    <v-timeline-item
      color="red lighten-1"
      fill-dot
      left
      small
    >
      <v-card>
        <v-card-title class="red lighten-1 justify-end">
          <h2 class="text-h4 mr-4 white--text font-weight-light">
            24 Nov 2021
          </h2>
          <v-icon
            dark
            size="42"
          >
            mdi-account-multiple-outline
          </v-icon>
        </v-card-title>
        <v-container>
          <v-row>
            <v-col
              class="hidden-sm-and-down"
              md="2"
            >
              <v-icon size="64">
                mdi-server-network
              </v-icon>
            </v-col>
            <v-col
              cols="12"
              md="10"
            ><ul>
              <li>Project Progress2 + Consultation</li>
              <li>Created data and created'Dashboard'page</li>
            </ul>
              
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-timeline-item>

    <v-timeline-item
      color="green lighten-1"
      fill-dot
      right
    >
      <v-card>
        <v-card-title class="green lighten-1">
          <v-icon
            class="mr-4"
            dark
            size="42"
          >
            mdi-phone-in-talk
          </v-icon>
          <h2 class="text-h4 white--text font-weight-light">
            1 Dec 2021
          </h2>
        </v-card-title>
        <v-container>
          <v-row>
            <v-col>
              Project Presentation + Presentation slides
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-timeline-item>
  </v-timeline>
</template>