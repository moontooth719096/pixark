# pixark
pixarkserver Docker

我找到了很多可以在Linux環境下運行的“Pixark”服務器，但都失敗了，所以我自己做了一個。<br />
I found a lot of "Pixark" servers that can run in a Linux environment, but they all failed, so I made one myself.

在架設的過程中，我設法在steam中連接到我的服務器，卻發現沒有地圖...<br />
In the process of erecting, I managed to connect to my server in steam, but found that there is no floor...

後來查了很多文章，發現可能是有未知Port未開放，導致客戶端在遊玩時無法獲取地圖信息。<br />
Later, I checked a lot of articles, and found that there may be an unknown port that is not open, so that the client cannot get the floor information when playing.

所以我只好關閉防火牆...<br />
So I just have to turn off the firewall...

如果有人知道哪個Port導致了這種情況，我希望能夠告訴我。<br />
If anyone knows which port is causing this, I hope to be able to tell me.

<h2>Environment Variables</h2>

<table>
  <thead>
    <tr>
      <th>Variable Name</th>
      <th>Default Value</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>MAXPLAYERS</td>
      <td>10</td>
      <td></td>
    </tr>
    <tr>
      <td>GAMEDIR</td>
      <td>/pixark</td>
      <td></td>
    </tr>
    <tr>
      <td>SERVERNAME</td>
      <td>DefaultWorld </td>
      <td></td>
    </tr>
    <tr>
      <td>SERVERPASSWORD</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>PORT</td>
      <td>27015 </td>
      <td></td>
    </tr>
    <tr>
      <td>QUERYPORT</td>
      <td>27016</td>
      <td></td>
    </tr>
    <tr>
      <td>CUBEPORT</td>
      <td>27018</td>
      <td></td>
    </tr>
    <tr>
      <td>RCONPORT</td>
      <td>27017</td>
      <td></td>
    </tr>
  </tbody>
</table>

<h2>Ports</h2>

<table>
  <thead>
    <tr>
      <th>Port</th>
      <th>Default Value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Port</td>
      <td>27015</td>
    </tr>
    <tr>
      <td>QUERYPORT</td>
      <td>27016</td>
    </tr>
    <tr>
      <td>CUBEPORT</td>
      <td>27018</td>
    </tr>
    <tr>
      <td>RCONPORT</td>
      <td>27017</td>
    </tr>
  </tbody>
</table>

<h2>VOLUME</h2>
VOLUME ["/pixark"]

<h2>Docker Run</h2>
