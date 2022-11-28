.class public Lbike/smarthalo/app/activities/ForgetDeviceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ForgetDeviceActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;


# static fields
.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "EXTRA_DEVICE_NAME"

.field public static final FORGOT_DEVICE_REQUEST_CODE:I = 0x18

.field public static final TAG:Ljava/lang/String; = "ForgetDeviceActivity"


# instance fields
.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private finishActivity(Z)V
    .locals 1

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->finish()V

    return-void
.end method

.method private forgetDevice()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smarthalo_forgotten"

    invoke-static {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f110178

    .line 58
    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;I)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$3CVoS2VCyoj0NavqpHehtR38WpY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$3CVoS2VCyoj0NavqpHehtR38WpY;-><init>(Lbike/smarthalo/app/activities/ForgetDeviceActivity;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;->forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_DEVICE_NAME"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_DEVICE_NAME"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    return-void
.end method

.method private initializeForgetDeviceButton()V
    .locals 2

    const v0, 0x7f0a01ab

    .line 42
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 44
    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$sSvSkKhnLtNcKVu3_y--m1g5Mds;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$sSvSkKhnLtNcKVu3_y--m1g5Mds;-><init>(Lbike/smarthalo/app/activities/ForgetDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$forgetDevice$3(Lbike/smarthalo/app/activities/ForgetDeviceActivity;Z)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->dismissLoadingDialog()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f110177

    .line 63
    invoke-static {p1, v0, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    const/4 p1, 0x1

    .line 67
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->finishActivity(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110175

    .line 69
    invoke-static {p1, v0, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initializeForgetDeviceButton$2(Lbike/smarthalo/app/activities/ForgetDeviceActivity;Landroid/view/View;)V
    .locals 3

    .line 45
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120005

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f110174

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$ejdWlfNuuvX0FjHWFUmA754kCoI;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$ejdWlfNuuvX0FjHWFUmA754kCoI;-><init>(Lbike/smarthalo/app/activities/ForgetDeviceActivity;)V

    const v2, 0x7f110011

    .line 47
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$zXV8RFO3FvUjaLRpus7n1pSYIcA;->INSTANCE:Lbike/smarthalo/app/activities/-$$Lambda$ForgetDeviceActivity$zXV8RFO3FvUjaLRpus7n1pSYIcA;

    const/high16 v2, 0x7f110000

    .line 48
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic lambda$null$0(Lbike/smarthalo/app/activities/ForgetDeviceActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->forgetDevice()V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f110176

    const/4 v0, 0x0

    .line 113
    invoke-static {p1, v0, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    .line 117
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->finishActivity(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 32
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->setContentView(I)V

    .line 34
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

    .line 36
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->init()V

    .line 38
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->initializeForgetDeviceButton()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 106
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->dismissLoadingDialog()V

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;->onViewResumed()V

    return-void
.end method
