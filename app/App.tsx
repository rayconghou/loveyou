import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import TabLayout from './(tabs)/_layout';

const linking = {
    prefixes: ['loveyou://'],
    config: {
        screens: {
            Tabs: {
                screens: {
                    Home: 'home',
                    Explore: 'explore',
                },
            },
        },
    },
};

const App = () => {
    <NavigationContainer linking={linking}>
    </NavigationContainer>
};

export default App;