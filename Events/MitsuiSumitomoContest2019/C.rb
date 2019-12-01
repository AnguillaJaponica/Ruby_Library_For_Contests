#include <bits/stdc++.h>
using namespace std;

int main(){
  int x;
  cin >> x;

  bool dp[7][1000001];

  void solve(){
    dp[0][0] = true;
    for (int i = 0; i < 6; i++){
        for (int k = 0; k <= m[i] && k * a[i] <= j; k++){
            dp[i + 1][j] |= dp[i][j - k * a[i]];
        }

        }
        }
  if (dp[6][1000000]) {
      printf(1)
  }else{
      printf(0)
  }
  }






