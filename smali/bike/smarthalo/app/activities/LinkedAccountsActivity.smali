.class public Lbike/smarthalo/app/activities/LinkedAccountsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LinkedAccountsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;


# static fields
.field public static final IS_NOTIFICATION_INTENT:Ljava/lang/String; = "IS_NOTIFICATION_INTENT"

.field private static final TAG:Ljava/lang/String; = "LinkedAccountsActivity"


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

.field private isStravaDescriptionVisible:Z

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

.field stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private animatedPageTransition(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f010044

    goto :goto_0

    :cond_0
    const v0, 0x7f010046

    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x7f010045

    goto :goto_1

    :cond_1
    const v1, 0x7f010043

    .line 140
    :goto_1
    iget-object v2, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->linkedAccountsList:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->connectToStravaDescription:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->toggleViewVisibility(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->onStravaItemClicked()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->onConnectToStravaClicked()V

    return-void
.end method

.method public static synthetic lambda$showStravaSettings$2(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->toggleViewVisibility(Z)V

    return-void
.end method

.method private onConnectToStravaClicked()V
    .locals 3

    .line 86
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConnectivityHelper;->isDataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;->getStravaAuthenticationUri()Landroid/net/Uri;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoDataToast(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private onStravaItemClicked()V
    .locals 1

    .line 95
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;->hasStravaAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->showStravaSettings()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->animatedPageTransition(Z)V

    :goto_0
    return-void
.end method

.method private showStravaSettings()V
    .locals 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/StravaSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010044

    const v1, 0x7f010045

    .line 104
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->overridePendingTransition(II)V

    .line 105
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$xoina2fa5vE0G2V4vPqj0BHec1Q;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$xoina2fa5vE0G2V4vPqj0BHec1Q;-><init>(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method private toggleViewVisibility(Z)V
    .locals 4

    .line 146
    iput-boolean p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->isStravaDescriptionVisible:Z

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->linkedAccountsList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->connectToStravaDescription:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateStravaAccountState()V
    .locals 2

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;->hasStravaAccount()Z

    move-result v0

    .line 110
    iget-object v1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->stravaAccountState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v0, 0x7f110278

    goto :goto_0

    :cond_0
    const v0, 0x7f110279

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 172
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 173
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_NOTIFICATION_INTENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const v0, 0x7f010043

    const v1, 0x7f010046

    .line 177
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->isStravaDescriptionVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->animatedPageTransition(Z)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getStravaCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;->inject(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V

    const p1, 0x7f0d0025

    .line 62
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p0, p0, p1, v0}, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;)Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    const p1, 0x7f11027c

    .line 64
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 65
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 67
    iget-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->stravaItem:Landroid/widget/LinearLayout;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$8etkyQasD4EhIMxJuF7ger1sKYI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$8etkyQasD4EhIMxJuF7ger1sKYI;-><init>(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->connectToStrava:Landroid/widget/ImageView;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$qqkPKXYnIUTZgEM_CqpUqyp9npg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$LinkedAccountsActivity$qqkPKXYnIUTZgEM_CqpUqyp9npg;-><init>(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->updateStravaAccountState()V

    .line 72
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;->handleAuthenticationCallBack(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    .line 128
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;->handleAuthenticationCallBack(Landroid/net/Uri;)V

    return-void
.end method

.method public onNoNetwork()V
    .locals 0

    .line 133
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoDataToast(Landroid/content/Context;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 81
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->updateStravaAccountState()V

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "UserLinkedAccounts"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onStravaAuthenticationSuccess()V
    .locals 2

    const v0, 0x7f110277

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    .line 123
    invoke-direct {p0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->showStravaSettings()V

    return-void
.end method
