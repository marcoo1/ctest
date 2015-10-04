<div id="wrapper">

<!-- Sidebar -->
<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a href="http://www.crowddriven.nl"><img width="300px" src="${appBaseUrl}/static/img/CDT-logo.jpg" alt="Crowddriven Tag Logo"></a>


        <li class="change-item" data-item="1">
            <a href="#Homepage"><i class="fa fa-user"></i> <span class="tabspace">Homepage</span></a>
        </li>
        <li class="change-item" data-item="2">
            <a href="#Profile"><i class="fa fa-user-plus"></i><span class="tabspace">Profile</a>
        </li>
        <li class="change-item" data-item="3">
            <a href="#Leaderbords"><i class="fa fa-sort-amount-desc"></i><span class="tabspace">Leaderbords</a>
        </li>
        <li  class="change-item" data-item="4">
            <a href="#Campaigns.html"><i class="fa fa-trophy"></i><span class="tabspace">Campaigns</a>
        </li>
        <li class="change-item" data-item="6">
            <a href="#Game_Instructions.html"><i class="fa fa-info-circle"></i><span class="tabspace"> Game instructions</a>
        </li>

    </ul>
    <div class="sidebar-rank"><img src="${appBaseUrl}/static/img/sidebar/stats.png"></div>
    <div class="sidebar-statistics">

         <table>
            <tr>
                <td width="15px">&nbsp;</td>
                <td class="statfont" width="120px" height="120px" style="background-color:#5cbbf2;">GAMES PLAYED<br><span class="bignumber spincrement"><nf:format number="${globalStats.totalMatches}" /></span></td>
                <td width="30px">&nbsp;</td>
                <td class="statfont" width="120px" height="120px" style="background-color:#e64c65;">ENTERED TAGS<br><span class="bignumber spincrement"><nf:format number="${globalStats.totalTags}" /></span></td>
                <td width="15px">&nbsp;</td>
            </tr>
            <tr height="5px">
                <td>&nbsp;</td>
            <tr>
                <td width="15px">&nbsp;</td>
                <td class="statfont" width="120px" height="120px" style="background-color:#fcb150;">HOURS PLAYED<br><span class="bignumber">20</span></td>
                <td width="30px">&nbsp;</td>
                <td class="statfont" width="120px" height="120px" style="background-color:#11a8ab;">NEXT RANK<br><span class="bignumber">900</span></td>
                <td width="15px">&nbsp;</td>
            </tr>

         </table>
    </div>

</div>
