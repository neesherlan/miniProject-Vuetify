<template>
  <v-app dark>
    <v-navigation-drawer v-model="drawer" clipped fixed app expand-on-hover permanent
      color="#FFE4C4">
      <v-list >
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
          dark
        >
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content >
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar dark clipped-left fixed app color="#8FBC8F">
      <v-btn icon fab dark color="white" @click="snackbar = true">
        <v-icon > mdi-android </v-icon>
      </v-btn>
      <v-toolbar-title v-text="title" />

      <v-spacer />

      <v-btn
        v-for="icon in animalfoot"
        :key="icon"
        :to="icon.to"
        class="mx-4"
        icon
      >
        <v-icon size="24px">
          {{ icon.icons }}
        </v-icon>
      </v-btn>
      <v-avatar>
        <img src="/img/Main.png" alt="sher" />
      </v-avatar>
      <v-menu bottom left>
        <template v-slot:activator="{ on, attrs }">
          <v-btn icon color="yellow" v-bind="attrs" v-on="on">
            <v-icon>mdi-dots-vertical</v-icon>
          </v-btn>
        </template>
        <v-list>
          <v-list-item
            v-for="(item, i) in itemss"
            :key="i"
            :to="item.to"
            router
            exact
          >
            <v-list-item-action>
              <v-icon>{{ item.iconleft }}</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title v-text="item.titleleft" />
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-menu>
    </v-app-bar>

    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-navigation-drawer v-model="rightDrawer" :right="right" fixed>
    </v-navigation-drawer>
    <v-snackbar v-model="snackbar" :timeout="timeout">
      {{ text }}

      <template v-slot:action="{ attrs }">
        <v-btn color="pink" text v-bind="attrs" @click="snackbar = false">
          Close
        </v-btn>
      </template>
    </v-snackbar>

    <v-footer dark padless app>
      <v-card
        flat
        tile
        width="100%"
        class="lighten-1 text-center"
        color="#8FBC8F"
      >
        <v-card-text>
          <a href="https://www.facebook.com/MFUconnect/" target="_blank"
            ><v-btn class="mx-4" icon>
              <v-icon size="24px"> mdi-facebook </v-icon>
            </v-btn></a
          >
          <a href="https://www.instagram.com/mfuconnect/" target="_blank"
            ><v-btn class="mx-4" icon>
              <v-icon size="24px"> mdi-instagram </v-icon>
            </v-btn></a
          >
          <a href="https://twitter.com/MFUconnect" target="_blank"
            ><v-btn class="mx-4" icon>
              <v-icon size="24px"> mdi-twitter </v-icon>
            </v-btn></a
          >
          <a href="https://www.youtube.com/user/mfuChannel" target="_blank"
            ><v-btn class="mx-4" icon>
              <v-icon size="24px"> mdi-youtube </v-icon>
            </v-btn></a
          >
        </v-card-text>

        <v-divider></v-divider>

        <v-card-text class="white--text">
          {{ new Date().getFullYear() }} —
          <strong>mae fah luang university</strong>
        </v-card-text>
      </v-card>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      snackbar: false,
      text: `Hello, our teacher is very kind`,
      timeout: 3000,
      clipped: false,
      drawer: false,
      fixed: false,
      icons: [
        'mdi-facebook',
        'mdi-twitter',
        'mdi-linkedin',
        'mdi-instagram',
      ],
      items: [
        {
          icon: "mdi-library",
          title: "Welcome",
          to: "/",
        },
        {
          icon: "mdi-notebook-multiple",
          title: "Data Table",
          to: "/Inter_students",
        },
        {
          icon: "mdi-chart-line",
          title: "Dashboard",
          to: "/dashboard",
        },
        {
          icon: "mdi-barley",
        },
      ],
      animalfoot: [
        {
          icons: "mdi-paw-outline",
          to: "/",
        },
      ],
      itemss: [
        {
          iconleft: "mdi-alert-octagon",
          titleleft: "Profile group",
          to: "/profile",
        },
        {
          iconleft: "mdi-airballoon",
          titleleft: "Timeline",
          to: "/timeline",
        },
        {
          iconleft: "mdi-attachment",
          titleleft: "File.inf",
          to: "/file",
        },
      ],
      foot: [
        {
          icons: "mdi-facebook",
        },
        {
          icons: "mdi-twitter",
        },
        {
          icons: "mdi-youtube",
        },
        {
          icons: "mdi-instagram",
        },
      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: "Inter Student",
    };
  },
};
</script>
<style>
a {
  text-decoration: none;
}
</style>