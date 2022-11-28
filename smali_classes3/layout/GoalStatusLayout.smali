.class public Llayout/GoalStatusLayout;
.super Ljava/lang/Object;
.source "GoalStatusLayout.java"


# static fields
.field public static final STATE_NO_GOAL:I = 0x0

.field public static final STATE_SETTING_GOAL:I = 0x1

.field public static final STATE_SET_GOAL:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private goalButton:Landroid/widget/ImageButton;

.field private goalButtonText:Landroid/widget/TextView;

.field private goalClicked:Landroid/view/View$OnClickListener;

.field private goalPanel:Landroid/widget/LinearLayout;

.field private goalTitleText:Landroid/widget/TextView;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Llayout/GoalStatusLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/GoalStatusLayout;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Llayout/GoalStatusLayout;->state:I

    .line 51
    iput-object p2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    .line 52
    iput-object p3, p0, Llayout/GoalStatusLayout;->goalClicked:Landroid/view/View$OnClickListener;

    .line 53
    iget-object p2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const p3, 0x7f0a05c5

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    .line 54
    iget-object p2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const p3, 0x7f0a01b7

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    .line 55
    iget-object p2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const p3, 0x7f0a01b9

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    .line 56
    new-instance p2, Llayout/GoalStatusLayout$1;

    invoke-direct {p2, p0, p1}, Llayout/GoalStatusLayout$1;-><init>(Llayout/GoalStatusLayout;Landroid/app/Activity;)V

    .line 79
    iget-object p3, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object p2, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Llayout/GoalStatusLayout;->goalClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const p3, 0x7f0a01bb

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Llayout/GoalStatusLayout$2;

    invoke-direct {v0, p0, p2}, Llayout/GoalStatusLayout$2;-><init>(Llayout/GoalStatusLayout;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    iget p2, p0, Llayout/GoalStatusLayout;->state:I

    invoke-virtual {p0, p2, p1}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Llayout/GoalStatusLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Llayout/GoalStatusLayout;->state:I

    return p0
.end method

.method static synthetic access$100(Llayout/GoalStatusLayout;)Landroid/widget/ImageButton;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Llayout/GoalStatusLayout;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic lambda$updateProgress$0(Llayout/GoalStatusLayout;Landroid/content/Context;DLandroid/widget/TextView;Lbike/smarthalo/app/models/SHGoal;)V
    .locals 3

    .line 148
    iget-object v0, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11016f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1103a1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {p2, p3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$updateProgress$1(Llayout/GoalStatusLayout;ILandroid/content/Context;)V
    .locals 4

    .line 183
    iget-object v0, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0421

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 184
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    iget-object v1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f0a059e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-lt p1, v3, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060128

    invoke-static {v0, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 189
    invoke-static {v1, v3, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x7f060079

    .line 192
    invoke-static {v1, p1, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getGoalSettingSate()I
    .locals 1

    .line 128
    iget v0, p0, Llayout/GoalStatusLayout;->state:I

    return v0
.end method

.method public setupGoalStatus(ILandroid/content/Context;)V
    .locals 4

    .line 99
    iput p1, p0, Llayout/GoalStatusLayout;->state:I

    const/16 v0, 0x8

    const v1, 0x7f0a01bb

    const v2, 0x7f0a0422

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    const v3, 0x7f080236

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    const v3, 0x7f11039f

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    const v3, 0x7f060079

    invoke-static {p1, v3, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    .line 105
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const p2, 0x7f0a01ba

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconGray(Landroid/widget/ImageView;)V

    .line 106
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    const p2, 0x7f1103a0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f11039c

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 112
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    const v3, 0x7f0800a5

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 113
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    const v3, 0x7f110398

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    const v3, 0x7f0602ae

    invoke-static {p1, v3, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    .line 115
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f110399

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 120
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButtonText:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalButton:Landroid/widget/ImageButton;

    const p2, 0x7f0800aa

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 122
    iget-object p1, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateProgress(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;Z)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 133
    iget v0, p0, Llayout/GoalStatusLayout;->state:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 137
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Llayout/GoalStatusLayout;->goalPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0a01bb

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v2

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->max(DD)D

    move-result-wide v6

    .line 146
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    if-nez v2, :cond_2

    .line 147
    new-instance p3, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;-><init>(Llayout/GoalStatusLayout;Landroid/content/Context;DLandroid/widget/TextView;Lbike/smarthalo/app/models/SHGoal;)V

    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 153
    :cond_2
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    const v3, 0x7f1103a1

    if-ne v2, v1, :cond_3

    const/16 v1, 0x3e8

    .line 155
    iget-object v2, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f11013d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 156
    invoke-static {p3, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    int-to-double v5, v1

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p3, p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 161
    iget-object v2, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110165

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 162
    invoke-static {p3, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v3

    .line 164
    invoke-static {p3, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {p3, p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 162
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_4
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_5

    .line 167
    iget-object p3, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f11012f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v2

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1103a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 168
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_5
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p3

    const/4 v2, 0x4

    if-ne p3, v2, :cond_6

    .line 172
    iget-object p3, p0, Llayout/GoalStatusLayout;->goalTitleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f110135

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v2

    .line 174
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1103a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 173
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 178
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v4

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    int-to-double v6, v1

    mul-double p2, p2, v6

    div-double/2addr v4, p2

    mul-double v4, v4, v2

    double-to-int p2, v4

    const/16 p3, 0x64

    .line 179
    invoke-static {p3, p2}, Ljava/lang/StrictMath;->min(II)I

    move-result p2

    .line 182
    new-instance p3, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;

    invoke-direct {p3, p0, p2, p1}, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;-><init>(Llayout/GoalStatusLayout;ILandroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    :goto_1
    return-void
.end method
