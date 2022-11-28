.class public Lbike/smarthalo/app/activities/FitnessSetGoalActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FitnessSetGoalActivity.java"


# static fields
.field public static GOAL_TYPE:Ljava/lang/String; = "goal_type"

.field private static TAG:Ljava/lang/String; = "FitnessSetGoalActivity"


# instance fields
.field private editValue:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private setGoalButton:Landroid/widget/ImageButton;

.field private setGoalButtonText:Landroid/widget/TextView;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->editValue:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)D
    .locals 2

    .line 33
    invoke-direct {p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->type:I

    return p0
.end method

.method static synthetic access$400(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$500(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButtonText:Landroid/widget/TextView;

    return-object p0
.end method

.method private getValue()D
    .locals 5

    .line 174
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    iget-object v2, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->editValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 185
    :cond_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 187
    iget v4, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->type:I

    if-nez v4, :cond_2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v0

    return-wide v2

    :cond_2
    if-nez v0, :cond_4

    if-ne v4, v1, :cond_3

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->milesToKm(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0

    :cond_3
    const/4 v0, 0x2

    if-ne v4, v0, :cond_4

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->mphToKph(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0

    :cond_4
    return-wide v2
.end method

.method private setUnits(Lbike/smarthalo/app/models/SHUser;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const v1, 0x7f0a0491

    .line 142
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0492

    .line 143
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    iget v3, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->type:I

    if-nez v3, :cond_1

    const p1, 0x7f1103b6

    .line 146
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1103b7

    .line 147
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    if-ne v3, v0, :cond_3

    const v0, 0x7f1103a9

    .line 149
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_2

    const p1, 0x7f1103ac

    .line 151
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f1103ad

    .line 153
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    const v0, 0x7f1103b1

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_4

    const p1, 0x7f1103b4

    .line 158
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const p1, 0x7f1103b5

    .line 160
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    if-ne v3, p1, :cond_6

    const p1, 0x7f1103a4

    .line 163
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1103a6

    .line 164
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x4

    if-ne v3, p1, :cond_7

    const p1, 0x7f1103a7

    .line 166
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f110132

    .line 167
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0d002b

    .line 52
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060079

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v0, 0x7f110163

    .line 55
    invoke-static {p0, v0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;II)V

    .line 56
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 59
    sget-object v0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->GOAL_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->type:I

    const p1, 0x7f0a01c2

    .line 61
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->editValue:Landroid/widget/EditText;

    .line 62
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->editValue:Landroid/widget/EditText;

    new-instance v0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;-><init>(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->editValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    const p1, 0x7f0a0494

    .line 75
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButtonText:Landroid/widget/TextView;

    const p1, 0x7f0a0493

    .line 76
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButton:Landroid/widget/ImageButton;

    .line 77
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButton:Landroid/widget/ImageButton;

    new-instance v2, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;-><init>(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setGoalButton:Landroid/widget/ImageButton;

    new-instance v2, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;-><init>(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a01be

    .line 117
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 119
    iget v2, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->type:I

    if-nez v2, :cond_0

    const v0, 0x7f0800f7

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    const v0, 0x7f0800ec

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    const v0, 0x7f0800f6

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    const v0, 0x7f0800ea

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne v2, v0, :cond_4

    const v0, 0x7f0800eb

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :cond_4
    :goto_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setUnits(Lbike/smarthalo/app/models/SHUser;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 221
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 204
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
