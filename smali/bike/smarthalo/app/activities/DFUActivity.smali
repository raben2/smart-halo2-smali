.class public Lbike/smarthalo/app/activities/DFUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DFUActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;


# static fields
.field public static final DFU_EXTRA_FIRMWARE_AVAILABILITY:Ljava/lang/String; = "DFU_EXTRA_FIRMWARE_AVAILABILITY"

.field public static final DFU_EXTRA_FIRMWARE_RELEASE_NOTES:Ljava/lang/String; = "DFU_EXTRA_FIRMWARE_RELEASE_NOTES"

.field private static final TAG:Ljava/lang/String; = "DFUActivity"


# instance fields
.field analyticManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

.field firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private centerTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private cleanUpVisuals()V
    .locals 2

    .line 145
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 146
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 147
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private close()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUActivity;->finish()V

    return-void
.end method

.method private getUpdateInfoText(Ljava/lang/String;Lbike/smarthalo/app/models/dfu/DfuAvailability;)Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p2, v1, :cond_0

    const v1, 0x7f1100b2

    .line 101
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const v1, 0x7f1100b0

    .line 104
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_0
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p2, v1, :cond_1

    const-string p2, "<br>"

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1100b3

    .line 110
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    .line 114
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "<br>"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1100b6

    .line 116
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$askCancelConfirmation$2(Lbike/smarthalo/app/activities/DFUActivity;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->cancelDFU(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/DFUActivity;Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->cancelDFU(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/DFUActivity;Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->onProgressBtnPressed()V

    return-void
.end method

.method public static startDFUActivity(Landroid/content/Context;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/DFUActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "DFU_EXTRA_FIRMWARE_AVAILABILITY"

    .line 125
    iget-object v2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "DFU_EXTRA_FIRMWARE_RELEASE_NOTES"

    .line 126
    iget-object p1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public askCancelConfirmation()V
    .locals 4

    .line 355
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$imukdH9sXkbpPdRuxT4gwJ-OA68;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$imukdH9sXkbpPdRuxT4gwJ-OA68;-><init>(Lbike/smarthalo/app/activities/DFUActivity;)V

    const v1, 0x7f1100bb

    const v2, 0x7f1100ba

    const v3, 0x7f1100b9

    invoke-static {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method public onCloseDFU()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DFUActivity;->close()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 78
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    .line 79
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFirmwareUpdateComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;->inject(Lbike/smarthalo/app/activities/DFUActivity;)V

    .line 81
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DFU_EXTRA_FIRMWARE_AVAILABILITY"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "DFU_EXTRA_FIRMWARE_RELEASE_NOTES"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lbike/smarthalo/app/activities/DFUActivity;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/DFUActivity;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-static {p0, p0, v1, v2}, Lbike/smarthalo/app/presenters/DFUPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    move-result-object v1

    iput-object v1, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    .line 87
    iget-object v1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    new-instance v2, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$JxvJAeCrKGd8F-kMyDVDKvyKgQA;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$JxvJAeCrKGd8F-kMyDVDKvyKgQA;-><init>(Lbike/smarthalo/app/activities/DFUActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    new-instance v2, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$FHh7-BNgWXWyWRT-8GCddcU65Ds;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DFUActivity$FHh7-BNgWXWyWRT-8GCddcU65Ds;-><init>(Lbike/smarthalo/app/activities/DFUActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->onDFUStarted(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->onViewCreated()V

    return-void
.end method

.method public onDFUCancelled()V
    .locals 3

    .line 320
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->topIcon:Landroid/widget/ImageView;

    const v2, 0x7f080248

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v2, 0x7f1100e2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    const v2, 0x7f1100df

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 330
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const v2, 0x7f1100c5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DFUActivity;->cleanUpVisuals()V

    return-void
.end method

.method public onDFUCancelling()V
    .locals 2

    .line 308
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 314
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v1, 0x7f1100e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const v1, 0x7f1100ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onDFUCompleted(Z)V
    .locals 5

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f1100c2

    goto :goto_0

    :cond_0
    const v1, 0x7f1100e5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DFUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v2, 0x7f1100c3

    goto :goto_1

    :cond_1
    const v2, 0x7f1100c1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_2

    .line 298
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const v0, 0x7f1100c4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 302
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 303
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DFUActivity;->cleanUpVisuals()V

    return-void
.end method

.method public onDFUError(ZZ)V
    .locals 3

    .line 235
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->topIcon:Landroid/widget/ImageView;

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 241
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const v0, 0x7f1100e9

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const v0, 0x7f1100e8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :goto_0
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 246
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v2, 0x7f1100e6

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const p2, 0x7f1100c5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onDFULowBatteryError(Z)V
    .locals 4

    .line 263
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->topIcon:Landroid/widget/ImageView;

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const v2, 0x7f1100e7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 270
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v3, 0x7f1100e6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const v0, 0x7f1100c5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDFUProgressChanged(I)V
    .locals 6

    .line 211
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v1, 0x7f1100f0

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 214
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 215
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v0, 0x3

    .line 216
    new-array v0, v0, [F

    int-to-float v1, p1

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    aput v1, v0, v5

    const/high16 v1, 0x437f0000    # 255.0f

    aput v1, v0, v2

    const/4 v1, 0x2

    const/high16 v3, 0x43660000    # 230.0f

    aput v3, v0, v1

    .line 217
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 218
    iget-object v1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 219
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method public onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 158
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->topIcon:Landroid/widget/ImageView;

    const v3, 0x7f080249

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    const v2, 0x7f1100e1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const v2, 0x7f1100b8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/activities/DFUActivity;->getUpdateInfoText(Ljava/lang/String;Lbike/smarthalo/app/models/dfu/DfuAvailability;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, p2, :cond_0

    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p1, p2, :cond_1

    .line 171
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDFUStarted(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButton:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->topIcon:Landroid/widget/ImageView;

    const v1, 0x7f080249

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p1, v0, :cond_0

    .line 183
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v0, 0x7f1100b1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v0, 0x7f1100ee

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const v0, 0x7f1100be

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 190
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 191
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v0, 0x7f1100bf

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    const v0, 0x7f1100ef

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 198
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    .line 199
    iget-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateWarning:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity;->centerTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->onViewDestroyed()V

    return-void
.end method

.method public onDeviceConnected()V
    .locals 2

    .line 204
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v1, 0x7f1100b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const v1, 0x7f1100b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onDeviceDisconnecting()V
    .locals 2

    .line 227
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v1, 0x7f1100c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 230
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->exitText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onFirmwareDownloaded()V
    .locals 2

    .line 344
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 345
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v1, 0x7f1100c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onFirmwareDownloading()V
    .locals 2

    .line 338
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 339
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDfuBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDfuBinding;->updateDescription:Landroid/widget/TextView;

    const v1, 0x7f1100bf

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/DFUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;->onViewResumed()V

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity;->analyticManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "DeviceUpdate"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method
