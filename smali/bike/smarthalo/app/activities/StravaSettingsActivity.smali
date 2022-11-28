.class public Lbike/smarthalo/app/activities/StravaSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StravaSettingsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private disconnectAccount()V
    .locals 4

    .line 61
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$dDigwvgmXDLTmSqAmFA2Z4Y00Lk;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$dDigwvgmXDLTmSqAmFA2Z4Y00Lk;-><init>(Lbike/smarthalo/app/activities/StravaSettingsActivity;)V

    const v1, 0x7f110366

    const v2, 0x7f110368

    const v3, 0x7f110367

    invoke-static {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method public static synthetic lambda$disconnectAccount$2(Lbike/smarthalo/app/activities/StravaSettingsActivity;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;->disconnectAccount()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/StravaSettingsActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->onAutoUploadSwitchChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/StravaSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->disconnectAccount()V

    return-void
.end method

.method private onAutoUploadSwitchChecked(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;->setAutomaticRideUpdate(Z)V

    .line 57
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->setUploadSwitchDescription(Z)V

    return-void
.end method

.method private setUploadSwitchDescription(Z)V
    .locals 2

    const v0, 0x7f110363

    .line 70
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110364

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->rideUploadDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f010043

    const v1, 0x7f010046

    .line 91
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAccountDisconnected()V
    .locals 2

    const v0, 0x7f110369

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 32
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    const p1, 0x7f11036b

    .line 33
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 34
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 35
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    .line 37
    iget-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->autoUploadSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$bWztI-rKopNL-_-snFFV4hnH_GI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$bWztI-rKopNL-_-snFFV4hnH_GI;-><init>(Lbike/smarthalo/app/activities/StravaSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->disconnectAccount:Landroid/widget/FrameLayout;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$c9cSCj_mfO8lC6piDjLiJRAlcqs;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$StravaSettingsActivity$c9cSCj_mfO8lC6piDjLiJRAlcqs;-><init>(Lbike/smarthalo/app/activities/StravaSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;->onViewCreated()V

    return-void
.end method

.method public onError()V
    .locals 0

    .line 107
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onNoNetwork()V
    .locals 0

    .line 102
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoDataToast(Landroid/content/Context;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public onSettingsReady(Z)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/StravaSettingsActivity;->setUploadSwitchDescription(Z)V

    .line 128
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->autoUploadSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public onStravaProfilePictureReady(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->profilePicture:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->profilePicture:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onStravaUsernameReady(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/activities/StravaSettingsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
