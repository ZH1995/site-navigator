<template>
    <el-main>
        <h1>关于我们</h1>

        <p>北辰青年（深圳）教育科技有限公司是一个青年文化与社交平台，致力于促进青年人在对话与实践中成长。旗下有YESGO行动、有趣人类实验室、有趣人类大会等多个品牌项目。带领青年人在体验式社交中，丰富经历、探索自我、获得成长。</p>

        <p>北辰青年媒体矩阵覆盖全国100多座城市共计数百万用户，朝着“青年文化社群”方向前进，用最懂年轻人的方式和年轻人交流，陪伴每一个青年人更好的成长。</p>

        <h2>公司信息</h2>

        <el-table :data="tableData" style="width: 100%">
            <el-table-column prop="value"/>
        </el-table>

        <h2>品牌文化</h2>
        <p>愿景：成为全球最好的青年文化品牌，影响改变一代人的成长方式。</p>
        <p>使命：帮助每一个年轻人，活成自己想要的模样。</p>
        <h2>发展起源</h2>
        <p>北辰青年最初源自创始人宋超发起的一个校园公益活动，召集年轻人开展同辈交流活动，疏导青年人的焦虑和职业困惑，后来北辰青年突破宣讲模式，搭建深度体验训练营。2015年,Yesgo行动”正式上线。</p>

        <h2>业务板块</h2>
        <h4>1、YES GO行动</h4>
        <p>YES GO行动是一个致力于创造青年人对话与实践的陪伴行动，行动核心是“人与人的深度交互”。每期行动带领一群人在两个月的时间，完成五项有趣而充满意义的挑战，涉及公益、艺术、生命、创意、演讲等领域。至今,Yesgo行动全国社区已覆盖 6 座城市，北京、上海、广州、深圳、杭州、成都。</p>
        <h4>2、有趣人类系列</h4>
        <p>有趣人类实验室：基于线上社交媒体，围绕年轻人关注的议题，发起青年社群活动，涵盖读书、自律、社交、视野开拓、能力提升等议题。有趣人类大会：致力于帮助青年人“探索内心热爱”的大型线下节日盛会。有趣人类说：专注于呈现 30 岁以下“活出自己想要模样”的青年剧院式演讲品牌。</p>
        <h2>发展历程</h2>
        <el-timeline style="max-width: 600px">
            <el-timeline-item
            v-for="(activity, index) in activities"
            :key="index"
            :timestamp="activity.timestamp"
            >
            {{ activity.content }}
            </el-timeline-item>
        </el-timeline>

    </el-main>
 </template>
 
 <script setup lang="ts">
const tableData = [
  {
    value: '1.公司名称：真不错科技有限公司',
  },
  {
    value: '2.外文名：ZhenBuCuoTech',
  },
  {
    value: '3.创始人：XXX',
  },
  {
    value: '4.业务范围：社群服务、论坛活动、课程教育、市场营销',
  },
  {
    value: '5.成立时间：2025年1月',
  },
  {
    value: '6.口号：我们终将活成自己想要的模样',
  },
]

 const activities = [
  {
    content: '官网上线',
    timestamp: '2025-02-01',
  },
  {
    content: '获得A轮千万级融资',
    timestamp: '2025-01-03',
  },
  {
    content: '公司成立',
    timestamp: '2024-12-28',
  },
]
 </script>
 
 <style>

 </style>