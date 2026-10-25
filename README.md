# 孙学薄肌流派认知提升 Skill

> 孙学开图，薄肌练级，黄毛出手

[English README](README.en.md) · [中文 Skill](SKILL.zh-CN.md)

一个会在真实对话中切换三种可辨识思维与口吻的私人导师 Skill。用户提出问题后，它会分别从孙宇晨、Alan Shao 与“黄毛”原型的角度分析，再综合成一条安全、具体、可复盘的行动路线。

> 三种声音均为基于公开材料的风格化框架推演，不代表本人意见，也不会伪造原话、经历或背书。“黄毛”是行动原型，不指向某个可识别的真人。

> **免费个人使用不等于放弃版权。** 本项目允许个人免费、非商业使用，但未经授权不得转载文件、改名发布、转发线下包、课程打包、商业售卖或提供收费服务。请分享[官方仓库链接](https://github.com/HugoLee99/HighQualityLifeTutor)，不要搬运仓库内容。完整条款见 [LICENSE.md](LICENSE.md)。

## 三个真正不同的视角

- **孙宇晨视角：**看版本、牌桌、地图、赔率和选择权。先扩大样本，再用下行受限的小实验购买信息。
- **Alan Shao 视角：**看身体、真肌肉、系统脂肪、成果线条和恢复循环。先建立最小充分能力，再减掉高维护负担。
- **黄毛视角：**看真实欲望、批准依赖和现实接触。少在脑中排练，做一个直接、可逆、尊重边界的动作。

若三者冲突，Skill 会指出探索与维护、扩张与简化、分析与立即行动之间的真实矛盾，并选择当前问题的主导视角，而不是把三种声音混成普通鸡汤。

## 默认回答结构

1. 现实简报；
2. 孙宇晨视角；
3. Alan Shao 视角；
4. 黄毛视角；
5. 冲突与主导视角；
6. 综合路线：现在做、七天实验、身体底线、止损条件和复盘证据；
7. 一条可迁移的思考感悟。

口吻不只体现在标题里：孙宇晨会用游戏与下注的节奏重构问题，Alan 会把抽象问题翻译成身体和训练隐喻，黄毛则用短句把用户推向现实反馈。口头禅只少量使用，推理本身必须站得住。

## 能做什么

- 制定每日计划和“今日必赢结果”
- 给出饮食、运动、睡眠与恢复建议
- 帮助处理拖延、选择困难、消费和沟通决策
- 把杂乱的流水账整理成一日复盘
- 做周复盘，识别反复出现的有效模式和阻力
- 为被打断的日程提供最低可执行版本
- 在每轮追问中保留三种不同口吻，并根据新证据更新判断

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

## 普通用户快速接入

不懂 GitHub 或不会安装 Skill，也可以打开 [`SKILL.zh-CN.md`](SKILL.zh-CN.md)，把全文复制给支持长文本的模型，再输入：

```text
请把上面的内容作为本次对话的行为规则，并按照三视角协议分析我接下来的问题。
```

部分模型可以直接读取[中文版原始链接](https://raw.githubusercontent.com/HugoLee99/HighQualityLifeTutor/main/SKILL.zh-CN.md)；如果读取失败，以复制全文的方式为准。不同模型的理解和执行效果可能不同。

## 一日复盘输出

默认会生成：

- 今天真实发生的事实
- 今日主要结果是否完成
- 三个视角分别如何解释这一天
- 三者的分歧与明日主导视角
- 明天唯一必赢结果
- 5–15 分钟的第一动作
- 身体底线、止损边界和复盘证据

复盘评价的是“这一天”，不是给“这个人”打总分。

## 文件结构

```text
.
├── SKILL.md
├── SKILL.zh-CN.md
├── README.md
├── README.en.md
├── LICENSE.md
├── NOTICE.md
├── DISTRIBUTION.md
├── VERSION
├── agents/
│   └── openai.yaml
├── scripts/
│   └── build-offline-package.ps1
└── references/
    ├── action-and-decisions.md
    ├── daily-review.md
    ├── food-movement-recovery.md
    ├── persona-lenses.md
    ├── provenance.md
    └── zh-CN/
        ├── action-and-decisions.md
        ├── daily-review.md
        ├── food-movement-recovery.md
        ├── persona-lenses.md
        └── provenance.md
```

- `SKILL.md`：标准英文入口，供 Skill 系统加载。
- `SKILL.zh-CN.md`：完整中文翻译。
- `references/`：仅在对应场景中按需读取的详细规则。
- `agents/openai.yaml`：Codex 中的显示名称、简介和默认调用提示。
- `LICENSE.md`：免费个人使用与禁止转载、商业再分发的正式许可。
- `NOTICE.md`：官方来源、版权与版本核验说明。
- `scripts/build-offline-package.ps1`：生成带版本、可选领取码和 SHA-256 校验的线下包。

## 版权、防转载与线下包

- **允许：**个人免费、非商业地安装、运行、备份和私下修改；分享官方仓库链接；依法使用模型生成的普通回答。
- **未经授权禁止：**镜像转载、复制文件后二次发布、改名包装、转发线下包、制作衍生 Skill 对外传播、课程或会员打包、商业售卖、SaaS/API/机器人收费提供。
- **公开仓库的现实边界：**GitHub 公开仓库仍可被查看和 Fork，任何技术方案都无法保证内容不被复制。许可、Git 历史、版本记录和文件哈希用于明确权利边界并增强溯源证据。
- **需要其他授权：**通过官方 GitHub 账号联系作者，取得书面许可。

制作线下包：

```powershell
.\scripts\build-offline-package.ps1 -RecipientCode "R7K2M9"
```

请使用不含姓名、邮箱或手机号的匿名领取码，并把领取码与接收人的对应关系保存在仓库之外。详细说明见 [DISTRIBUTION.md](DISTRIBUTION.md)。

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

这个 Skill 将三套网络方法论重构成一个闭环：

- 用低维护、可持续的方式照顾身体；
- 缩短“知道”和“开始测试”之间的距离；
- 用真实结果而不是忙碌感评价行动；
- 在任何计划中保留健康、诚信、现金流和退出选项。

理想循环是：`打开地图 → 建立充分能力 → 直接接触现实 → 收集反馈 → 更新地图`。

它不要求完美，也不把偶尔失误解释为人格失败。计划失效时，先调整系统与摩擦，再谈意志力。
