孙学薄肌黄毛 skill

[English README](README.en.md) · [中文 Skill](SKILL.zh-CN.md)

一个面向日常生活管理的私人导师 Skill。它提炼了“孙学、薄肌、黄毛”中可复用且有益的部分，并主动去除幸存者偏差、极端结果导向、冒进、操控和身体焦虑。

它不是“逼自己更狠”的工具，而是一套让行动更主动、健康更可持续、复盘更诚实的生活操作系统。

## 核心原则

- **薄肌原则：**追求功能、健康和最低有效剂量，不追求高维护成本的表演性自律。
- **黄毛原则：**条件不完美也先迈出可逆的第一步；主动，但不鲁莽。
- **结果原则：**用可见成果和保留的选择权判断计划，同时守住健康、诚信、法律和不可承受风险的底线。

明确排除：极端节食、身体羞辱、牺牲睡眠、冲动消费、操控关系、制造争议、孤注一掷，以及“结果可以为过程开脱”。

## 能做什么

- 制定每日计划和“今日必赢结果”
- 给出饮食、运动、睡眠与恢复建议
- 帮助处理拖延、选择困难、消费和沟通决策
- 把杂乱的流水账整理成一日复盘
- 做周复盘，识别反复出现的有效模式和阻力
- 为被打断的日程提供最低可执行版本

## 安装

将仓库克隆到 Codex Skills 目录：

```powershell
git clone https://github.com/HugoLee99/HighQualityLifeTutor.git "$HOME\.codex\skills\high-agency-life-coach"
```

如果你设置了 `CODEX_HOME`，则可使用：

```powershell
git clone https://github.com/HugoLee99/HighQualityLifeTutor.git "$env:CODEX_HOME\skills\high-agency-life-coach"
```

重新打开 Codex 会话后，可显式调用：

```text
$high-agency-life-coach 帮我安排今天。我需要完成……
```

也可以直接描述需求，由系统自动匹配：

```text
帮我复盘今天：昨晚睡了六小时，午饭随便吃了，下午完成了项目初稿，但一直没有运动……
```

## 一日复盘输出

默认会生成：

- 今天真实发生的事实
- 今日主要结果是否完成
- 一个有效模式、一个主要阻力
- 保留 / 调整 / 放下
- 明天唯一必赢结果
- 5–15 分钟的第一动作
- 健康底线和被打断后的备用方案

复盘评价的是“这一天”，不是给“这个人”打总分。

## 文件结构

```text
.
├── SKILL.md
├── SKILL.zh-CN.md
├── README.md
├── README.en.md
├── agents/
│   └── openai.yaml
└── references/
    ├── action-and-decisions.md
    ├── daily-review.md
    ├── food-movement-recovery.md
    └── zh-CN/
        ├── action-and-decisions.md
        ├── daily-review.md
        └── food-movement-recovery.md
```

- `SKILL.md`：标准英文入口，供 Skill 系统加载。
- `SKILL.zh-CN.md`：完整中文翻译。
- `references/`：仅在对应场景中按需读取的详细规则。
- `agents/openai.yaml`：Codex 中的显示名称、简介和默认调用提示。

## 安全边界

本 Skill 不替代医生、注册营养师、心理治疗师或紧急服务，不诊断疾病，也不建议擅自修改处方治疗。遇到持续或严重症状、胸痛、昏厥、饮食失调迹象或急性心理风险时，应优先寻求适当的专业帮助。

## 示例

### 规划一天

```text
$high-agency-life-coach
我今天要工作、剪视频和健身，下午三点还有会议。帮我排一个不透支的计划。
```

### 做即时决策

```text
我拖了三天还没给合作方回复。帮我找到阻力，并写出现在可以发出的第一句话。
```

### 晚间复盘

```text
今天七点半起床，上午做完了方案初稿。午饭吃得太晚，下午精神差，刷了一个小时手机。晚上散步二十分钟。帮我复盘。
```

## 设计说明

这个 Skill 保留了三套网络方法论中最有价值的部分：

- 用低维护、可持续的方式照顾身体；
- 缩短“知道”和“开始测试”之间的距离；
- 用真实结果而不是忙碌感评价行动；
- 在任何计划中保留健康、诚信、现金流和退出选项。

它不要求完美，也不把偶尔失误解释为人格失败。计划失效时，先调整系统与摩擦，再谈意志力。
