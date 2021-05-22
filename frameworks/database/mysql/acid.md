# ACID



<table>
  <thead>
    <tr>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Resource</th>
      <th style="text-align:left">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Atomicity</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">
        <p>Meaning any query is atomic,</p>
        <p>and any transaction either committed or abort+rollback</p>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Isolation</td>
      <td style="text-align:left"><a href="https://www.cnblogs.com/fengzheng/p/12557762.html">https://www.cnblogs.com/fengzheng/p/12557762.html</a>,
        <a
        href="https://segmentfault.com/a/1190000017539522">https://segmentfault.com/a/1190000017539522</a>
      </td>
      <td style="text-align:left">
        <p></p>
        <p>Transaction have four isolation levels</p>
        <ol>
          <li>Read uncommitted</li>
          <li>Read committed</li>
          <li>Repeated read</li>
          <li>Serializable</li>
        </ol>
        <p>Serializable is 100% consistent, meaning any time any one read the same
          up to date data against same db
          <br />
          <br />Repeated read means during the transaction, it always read same value
          (mysql default use this)
          <br />
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Consistency</td>
      <td style="text-align:left">
        <p><a href="https://www.huaweicloud.com/articles/7bb1af974905fb8a173e88e6671d71b0.html">https://www.huaweicloud.com/articles/7bb1af974905fb8a173e88e6671d71b0.html</a>
        </p>
        <p><a href="https://www.cnblogs.com/laoyeye/p/8097684.html">https://www.cnblogs.com/laoyeye/p/8097684.html</a>
        </p>
        <p><a href="https://www.36nu.com/post/163.html">https://www.36nu.com/post/163.html</a>
        </p>
      </td>
      <td style="text-align:left">
        <p>To ensure 100% consistency, we need to write/read to same db with lock.
          <br
          />
        </p>
        <p>Lock will ensure to read up to update data
          <br />Lock make data consistent</p>
        <p></p>
        <p>Different replica is doing async replication, so there is delay and make
          data inconsistent before syncing</p>
        <p></p>
        <p>To resolve write/write issue,</p>
        <p>we need lock too</p>
        <p></p>
        <p>Pemessitic/Optmistic lock</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>

