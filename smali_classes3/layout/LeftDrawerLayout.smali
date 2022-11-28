.class public Llayout/LeftDrawerLayout;
.super Landroid/widget/LinearLayout;
.source "LeftDrawerLayout.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;


# static fields
.field public static final FEEDBACK_URL:Ljava/lang/String; = "https://smarthalo-community.typeform.com/to/T1ERQiLw"

.field public static final LEGAL_URL:Ljava/lang/String; = "https://mobile.smarthalo.bike/legal"


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field drawerTopTitleTextView:Landroid/widget/TextView;

.field enabledInstabugClickCount:I

.field parentActivity:Landroid/app/Activity;

.field presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

.field private versionCodeOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    .line 122
    new-instance v1, Llayout/LeftDrawerLayout$1;

    invoke-direct {v1, p0}, Llayout/LeftDrawerLayout$1;-><init>(Llayout/LeftDrawerLayout;)V

    iput-object v1, p0, Llayout/LeftDrawerLayout;->versionCodeOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, p1, v1, v0}, Llayout/LeftDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    .line 122
    new-instance v1, Llayout/LeftDrawerLayout$1;

    invoke-direct {v1, p0}, Llayout/LeftDrawerLayout$1;-><init>(Llayout/LeftDrawerLayout;)V

    iput-object v1, p0, Llayout/LeftDrawerLayout;->versionCodeOnClickListener:Landroid/view/View$OnClickListener;

    .line 60
    invoke-virtual {p0, p1, p2, v0}, Llayout/LeftDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    .line 122
    new-instance v0, Llayout/LeftDrawerLayout$1;

    invoke-direct {v0, p0}, Llayout/LeftDrawerLayout$1;-><init>(Llayout/LeftDrawerLayout;)V

    iput-object v0, p0, Llayout/LeftDrawerLayout;->versionCodeOnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Llayout/LeftDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$logout$10(Llayout/LeftDrawerLayout;)V
    .locals 1

    .line 179
    iget-object v0, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onProfileClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onLinkedAccountsClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$2(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onFeedbackClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$3(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onHelpClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$4(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onInstallInstructionsClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$5(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onTouchDemoClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$6(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onLegalClicked()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$7(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->onLogoutClicked()V

    return-void
.end method

.method static synthetic lambda$onFinishInflate$8(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 111
    invoke-static {p0}, Lcom/instabug/bug/BugReporting;->show(I)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$9(Llayout/LeftDrawerLayout;Landroid/view/View;)V
    .locals 2

    .line 116
    iget-object p1, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/designRefresh/DRMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object p1, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method private logout()V
    .locals 2

    .line 178
    iget-object v0, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$0FIjPJZm8tTXJP0m4YxacecY_cA;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$0FIjPJZm8tTXJP0m4YxacecY_cA;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->logout(Lbike/smarthalo/app/presenters/LeftDrawerPresenter$LogoutCallback;)V

    return-void
.end method

.method private navigateTo(Ljava/lang/Class;)V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {p0}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onFeedbackClicked()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://smarthalo-community.typeform.com/to/T1ERQiLw"

    const v2, 0x7f11023a

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/activities/WebBrowserActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private onHelpClicked()V
    .locals 4

    .line 144
    iget-object v0, p0, Llayout/LeftDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "UserHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103c2

    const v2, 0x7f110187

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/activities/WebBrowserActivity;->startActivity(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private onInstallInstructionsClicked()V
    .locals 3

    .line 153
    iget-object v0, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Llayout/LeftDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "UserInstallInstructions"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onLegalClicked()V
    .locals 4

    .line 168
    iget-object v0, p0, Llayout/LeftDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "UserLegal"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://mobile.smarthalo.bike/legal"

    const v2, 0x7f11023d

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/activities/WebBrowserActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private onLinkedAccountsClicked()V
    .locals 1

    .line 140
    const-class v0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;

    invoke-direct {p0, v0}, Llayout/LeftDrawerLayout;->navigateTo(Ljava/lang/Class;)V

    return-void
.end method

.method private onLogoutClicked()V
    .locals 2

    .line 173
    iget-object v0, p0, Llayout/LeftDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/admin/UserFunctionType;->Logout:Lbike/smarthalo/app/analytics/admin/UserFunctionType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;->getUserFunctionAccessedEvent(Lbike/smarthalo/app/analytics/admin/UserFunctionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 174
    invoke-direct {p0}, Llayout/LeftDrawerLayout;->logout()V

    return-void
.end method

.method private onProfileClicked()V
    .locals 1

    .line 136
    const-class v0, Lbike/smarthalo/app/profile/ProfileActivity;

    invoke-direct {p0, v0}, Llayout/LeftDrawerLayout;->navigateTo(Ljava/lang/Class;)V

    return-void
.end method

.method private onTouchDemoClicked()V
    .locals 3

    .line 160
    iget-object v0, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->showTouchDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110244

    goto :goto_0

    :cond_0
    const v0, 0x7f110243

    .line 162
    :goto_0
    iget-object v1, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    .line 163
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 254
    iget-object v0, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onDrawerClosed()V

    :cond_0
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f0d00d9

    .line 69
    invoke-static {p1, p2, p0}, Llayout/LeftDrawerLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Llayout/LeftDrawerLayout;)V

    .line 71
    invoke-static {p1, p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    return-void
.end method

.method public isDrawerOpen()Z
    .locals 1

    .line 261
    iget-object v0, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isDrawerOpened()Z
    .locals 1

    .line 274
    iget-object v0, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 1

    .line 211
    iput-object p1, p0, Llayout/LeftDrawerLayout;->parentActivity:Landroid/app/Activity;

    const v0, 0x7f0a0158

    .line 212
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 213
    iget-object p1, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v0, Llayout/LeftDrawerLayout$2;

    invoke-direct {v0, p0}, Llayout/LeftDrawerLayout$2;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 240
    iget-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onViewCreated()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 244
    iget-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onViewDestroyed()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 207
    iget-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 191
    iget-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onViewResumed()V

    .line 193
    iget-object p1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->getCurrentUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Llayout/LeftDrawerLayout;->drawerTopTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0076

    .line 198
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/AuthLevel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0159

    .line 78
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/LeftDrawerLayout;->drawerTopTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0067

    .line 79
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->getVersionText()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Llayout/LeftDrawerLayout;->versionCodeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0350

    .line 86
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 87
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$4pWnnflm-FA8gnyzAw02iSVd2hQ;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$4pWnnflm-FA8gnyzAw02iSVd2hQ;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034e

    .line 89
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 90
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$81-popl-gZYJCXpqGz1BO5PIQTE;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$81-popl-gZYJCXpqGz1BO5PIQTE;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0347

    .line 92
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 93
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$Izw0FJ2DhyMh-9YP2nLZzvio6As;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$Izw0FJ2DhyMh-9YP2nLZzvio6As;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0348

    .line 95
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 96
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$foWY9PqfJLStDCLIEyKd-WnVZZQ;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$foWY9PqfJLStDCLIEyKd-WnVZZQ;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034b

    .line 98
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 99
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$a1_MRTXdZMGb7WKFyRMOvvCi1_I;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$a1_MRTXdZMGb7WKFyRMOvvCi1_I;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0352

    .line 101
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 102
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$JPBT7hV9YXH4iCSBOTgLWA6xau0;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$JPBT7hV9YXH4iCSBOTgLWA6xau0;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034d

    .line 104
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 105
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$f00RHxwPmjYB8-hUfw-fKWOfDV0;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$f00RHxwPmjYB8-hUfw-fKWOfDV0;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034f

    .line 107
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 108
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$1zcvGP5857OupQggMlzzeo7ClSQ;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$1zcvGP5857OupQggMlzzeo7ClSQ;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0351

    .line 110
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 111
    sget-object v1, Llayout/-$$Lambda$LeftDrawerLayout$TzqrpjgBQ9CCTHukzODogKVizNA;->INSTANCE:Llayout/-$$Lambda$LeftDrawerLayout$TzqrpjgBQ9CCTHukzODogKVizNA;

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0346

    .line 113
    invoke-virtual {p0, v0}, Llayout/LeftDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerItemLayout;

    .line 114
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setVisibility(I)V

    .line 115
    new-instance v1, Llayout/-$$Lambda$LeftDrawerLayout$HoBciuNl300UYYMQ6M1LEG52eVw;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$LeftDrawerLayout$HoBciuNl300UYYMQ6M1LEG52eVw;-><init>(Llayout/LeftDrawerLayout;)V

    invoke-virtual {v0, v1}, Llayout/LeftDrawerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public open()V
    .locals 1

    .line 248
    iget-object v0, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggleDrawerLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Llayout/LeftDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :goto_0
    return-void
.end method
