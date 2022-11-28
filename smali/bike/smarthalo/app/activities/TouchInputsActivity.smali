.class public Lbike/smarthalo/app/activities/TouchInputsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TouchInputsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;
.implements Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;
.implements Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

.field private editPage:Llayout/touchInputs/TouchInputsEditPage;

.field private editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

.field private listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private touchInputsItemsAdapter:Llayout/adapters/TouchInputItemsAdapter;

.field private touchSoundSwitch:Landroid/widget/Switch;

.field private touchSoundVolumeBar:Landroid/widget/SeekBar;

.field private volumeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 100
    new-instance v0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/TouchInputsActivity$1;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->volumeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/TouchInputsActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundVolumeBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/activities/TouchInputsActivity;)Landroid/widget/Switch;
    .locals 0

    .line 51
    iget-object p0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/activities/TouchInputsActivity;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;
    .locals 0

    .line 51
    iget-object p0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    return-object p0
.end method

.method private animatedPageTransition(Z)V
    .locals 4

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

    .line 238
    :goto_1
    iget-object v2, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputEditPage:Landroid/view/View;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputEditPage:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/TouchInputsActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 78
    invoke-direct {p0, p3}, Lbike/smarthalo/app/activities/TouchInputsActivity;->onItemClicked(I)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/TouchInputsActivity;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 95
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object p2, Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;->Sounds:Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;

    invoke-static {p2}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getTouchInputConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 96
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    iget-object p2, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundVolumeBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->onTouchSoundUpdated(IZ)V

    return-void
.end method

.method public static synthetic lambda$onTouchInputSetSuccess$4(Lbike/smarthalo/app/activities/TouchInputsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->showListPage(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    return-void
.end method

.method public static synthetic lambda$showListPage$2(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->getNewItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Llayout/touchInputs/TouchInputsEditPage;->unselectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    .line 184
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    invoke-virtual {v0, p1}, Llayout/touchInputs/TouchInputsEditPage;->unselectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    .line 185
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->clearSelectionState()V

    return-void
.end method

.method public static synthetic lambda$showOverrideConfirmationPrompt$3(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    return-void
.end method

.method private onItemClicked(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchInputsItemsAdapter:Llayout/adapters/TouchInputItemsAdapter;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Llayout/adapters/TouchInputItemsAdapter;->getItemType(I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 224
    iget-boolean v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    if-nez v0, :cond_3

    .line 225
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->onTouchInputSelected(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    .line 226
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Llayout/touchInputs/TouchInputsEditPage;->configureItemsAvailability(Z)V

    .line 227
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Llayout/touchInputs/TouchInputsEditPage;->selectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    .line 228
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "QuickTouchCustomize"

    invoke-interface {v0, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->animatedPageTransition(Z)V

    .line 230
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->setToolBarText(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->getSelectedItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f11037e

    .line 153
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->setToolBarText(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->showListPage(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->finish()V

    const v0, 0x7f010043

    const v1, 0x7f010046

    .line 157
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002e

    .line 69
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    .line 70
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/activities/TouchInputsActivity;)V

    const p1, 0x7f11037e

    .line 71
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 72
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 74
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 75
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-static {p0, p0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    .line 76
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p0, p0, p1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    .line 78
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$9V3wKulyRwzqS77hF6Gmg8lxIu4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$9V3wKulyRwzqS77hF6Gmg8lxIu4;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    const v2, 0x7f0d00d7

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    iget-object v2, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    const v3, 0x7f0d00cd

    invoke-virtual {p1, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    .line 87
    new-instance p1, Llayout/touchInputs/TouchInputsEditPage;

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputEditPage:Landroid/view/View;

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->isUserTester()Z

    move-result v1

    invoke-direct {p1, p0, v0, p0, v1}, Llayout/touchInputs/TouchInputsEditPage;-><init>(Landroid/content/Context;Landroid/view/View;Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;Z)V

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    const p1, 0x7f0a0584

    .line 88
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundVolumeBar:Landroid/widget/SeekBar;

    .line 89
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundVolumeBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->getTouchSoundVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundVolumeBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->volumeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0a0582

    .line 92
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundSwitch:Landroid/widget/Switch;

    .line 93
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->getTouchSoundEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchSoundSwitch:Landroid/widget/Switch;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$EClFw1LA0U8r4P2MEJaLOU4iyp8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$EClFw1LA0U8r4P2MEJaLOU4iyp8;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->getTouchInputItem(Lbike/smarthalo/app/models/TouchInputItemType;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    return-void
.end method

.method public onFirmwareInfoReceived(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    const v0, 0x7f0a0579

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onNoActionSelected()V
    .locals 1

    .line 252
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onDispose()V

    .line 136
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->onViewPaused()V

    .line 137
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 120
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onStart()V

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->listPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->onViewResumed()V

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->onViewResumed()V

    .line 125
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputEditPage:Landroid/view/View;

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "QuickTouchCustomize"

    goto :goto_0

    :cond_0
    const-string v1, "QuickTouchList"

    .line 125
    :goto_0
    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchInputItemsReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Llayout/adapters/TouchInputItemsAdapter;

    invoke-direct {v0, p0, p1}, Llayout/adapters/TouchInputItemsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchInputsItemsAdapter:Llayout/adapters/TouchInputItemsAdapter;

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityTouchInputsBinding;->touchInputsList:Landroid/widget/ListView;

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->touchInputsItemsAdapter:Llayout/adapters/TouchInputItemsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPage:Llayout/touchInputs/TouchInputsEditPage;

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->editPresenter:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;->getNewItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Llayout/touchInputs/TouchInputsEditPage;->onTouchInputsReady(Ljava/util/List;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    return-void
.end method

.method public onTouchInputSetSuccess(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 2

    .line 212
    iget-object p2, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Llayout/touchInputs/TouchInputsConfirmationToast;->showTouchInputsConfirmationToast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p1, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$hTDcuQdOwZka-wTyjUbKQN4B4Uc;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$hTDcuQdOwZka-wTyjUbKQN4B4Uc;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method public showCannotOverrideLightPrompt()V
    .locals 2

    const v0, 0x7f11038f

    const/4 v1, 0x0

    .line 201
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showListPage(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 3

    const v0, 0x7f11037e

    .line 177
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->setToolBarText(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->animatedPageTransition(Z)V

    .line 180
    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "QuickTouchList"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    const-wide/16 v1, 0xc8

    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method public showOnlyTwoTapsForLightPrompt()V
    .locals 2

    const v0, 0x7f11038b

    const/4 v1, 0x0

    .line 206
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showOverrideConfirmationPrompt(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/TouchInputItemType;)V
    .locals 2

    const/4 p2, 0x1

    .line 191
    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f11038c

    .line 193
    invoke-virtual {p0, v0, p2}, Lbike/smarthalo/app/activities/TouchInputsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$VaX22rM8T_0vOKYedN7Dv1uHL-g;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$VaX22rM8T_0vOKYedN7Dv1uHL-g;-><init>(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    const p1, 0x7f11038e

    const v1, 0x7f11038d

    .line 191
    invoke-static {p0, p2, p1, v1, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showHtmlConfirmationDialog(Landroid/content/Context;Ljava/lang/String;IILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method
