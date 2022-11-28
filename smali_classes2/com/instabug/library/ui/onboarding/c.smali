.class public Lcom/instabug/library/ui/onboarding/c;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "OnBoardingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/library/ui/onboarding/b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "SF_SWITCH_NO_DEFAULT",
        "SF_SWITCH_NO_DEFAULT"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/ui/onboarding/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/ui/onboarding/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/ui/onboarding/b;

    iput-object p1, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    return-void
.end method

.method private a(Lcom/instabug/library/invocation/InstabugInvocationEvent;)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 26
    sget-object v0, Lcom/instabug/library/ui/onboarding/c$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 41
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v0, :cond_0

    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_shake:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_shake_dark:I

    :goto_0
    return p1

    .line 42
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v0, :cond_2

    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_swipe:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_swipe_dark:I

    :goto_1
    return p1

    .line 43
    :cond_3
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v0, :cond_4

    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_screenshot:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_screenshot_dark:I

    :goto_2
    return p1

    .line 44
    :cond_5
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v0, :cond_6

    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_floating_btn:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_floating_btn_dark:I

    :goto_3
    return p1
.end method

.method static synthetic a(Lcom/instabug/library/ui/onboarding/c;)Lcom/instabug/library/ui/onboarding/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/library/ui/onboarding/b;->c()V

    :cond_0
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/ui/onboarding/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->j()Lcom/instabug/library/ui/onboarding/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->f()Lcom/instabug/library/ui/onboarding/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->g()Lcom/instabug/library/ui/onboarding/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private f()Lcom/instabug/library/ui/onboarding/d;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/ui/onboarding/c;->a(Ljava/util/List;)Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/ui/onboarding/c;->a(Lcom/instabug/library/invocation/InstabugInvocationEvent;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    sget-object v3, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_HOW_TO_REPORT_STEP_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 8
    invoke-interface {v1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_title:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v3, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    sget-object v3, Lcom/instabug/library/ui/onboarding/c$b;->b:[I

    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/instabug/library/ui/onboarding/c;->a(Ljava/util/List;)Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_HOW_TO_REPORT_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 31
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_shake:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_HOW_TO_REPORT_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 35
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_swipe:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_HOW_TO_REPORT_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 39
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_screenshot:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_HOW_TO_REPORT_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 43
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_floating:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 65
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/instabug/library/ui/onboarding/d;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/instabug/library/ui/onboarding/d;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g()Lcom/instabug/library/ui/onboarding/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_FINISH_STEP_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 3
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/instabug/library/R$string;->ib_str_beta_welcome_finishing_step_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_FINISH_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v2, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 7
    invoke-interface {v2}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lcom/instabug/library/R$string;->ib_str_beta_welcome_finishing_step_content:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v0, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v2, v3, :cond_1

    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_stay_updated:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_stay_updated_dark:I

    .line 13
    :goto_1
    invoke-static {v2, v1, v0}, Lcom/instabug/library/ui/onboarding/d;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/instabug/library/ui/onboarding/d;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/ui/onboarding/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->i()Lcom/instabug/library/ui/onboarding/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private i()Lcom/instabug/library/ui/onboarding/d;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/ui/onboarding/c;->a(Ljava/util/List;)Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/ui/onboarding/c;->a(Lcom/instabug/library/invocation/InstabugInvocationEvent;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    sget-object v3, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->LIVE_WELCOME_MESSAGE_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 7
    invoke-interface {v1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_live_welcome_message_title:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v3, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    sget-object v3, Lcom/instabug/library/ui/onboarding/c$b;->b:[I

    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/instabug/library/ui/onboarding/c;->a(Ljava/util/List;)Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->LIVE_WELCOME_MESSAGE_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 31
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_shake:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->LIVE_WELCOME_MESSAGE_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 35
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_swipe:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->LIVE_WELCOME_MESSAGE_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 39
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_screenshot:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->LIVE_WELCOME_MESSAGE_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 43
    invoke-interface {v3}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/instabug/library/R$string;->ib_str_beta_welcome_how_to_report_step_content_floating:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/ui/onboarding/d;->a(ILjava/lang/String;Ljava/lang/String;Z)Lcom/instabug/library/ui/onboarding/d;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()Lcom/instabug/library/ui/onboarding/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_WELCOME_STEP_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 4
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/instabug/library/R$string;->ib_str_beta_welcome_step_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BETA_WELCOME_MESSAGE_WELCOME_STEP_CONTENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v2, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    .line 10
    invoke-interface {v2}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lcom/instabug/library/R$string;->ib_str_beta_welcome_step_content:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v2, v3, :cond_1

    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_welcome:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_onboarding_welcome_dark:I

    .line 17
    :goto_1
    invoke-static {v2, v1, v0}, Lcom/instabug/library/ui/onboarding/d;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/instabug/library/ui/onboarding/d;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    invoke-interface {v0}, Lcom/instabug/library/ui/onboarding/b;->b()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    invoke-interface {v0}, Lcom/instabug/library/ui/onboarding/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)Lcom/instabug/library/invocation/InstabugInvocationEvent;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/InstabugInvocationEvent;",
            ">;)",
            "Lcom/instabug/library/invocation/InstabugInvocationEvent;"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1

    .line 20
    :cond_1
    sget-object v0, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SCREENSHOT:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SCREENSHOT:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1

    .line 22
    :cond_2
    sget-object v0, Lcom/instabug/library/invocation/InstabugInvocationEvent;->TWO_FINGER_SWIPE_LEFT:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->TWO_FINGER_SWIPE_LEFT:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1

    .line 25
    :cond_3
    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->FLOATING_BUTTON:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1
.end method

.method a()Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/InstabugInvocationEvent;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInstabugInvocationEvents()[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->k()V

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->BETA:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    .line 6
    :cond_0
    sget-object v0, Lcom/instabug/library/ui/onboarding/c$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->b()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/c;->c()V

    .line 13
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->d()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->e()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/instabug/library/ui/onboarding/b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/c;->h()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/c;->a:Lcom/instabug/library/ui/onboarding/b;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lcom/instabug/library/ui/onboarding/b;->a(Ljava/util/List;)V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instabug/library/ui/onboarding/c$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/ui/onboarding/c$a;-><init>(Lcom/instabug/library/ui/onboarding/c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
