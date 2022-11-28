.class public Lbike/smarthalo/app/activities/DailyRidesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DailyRidesActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;
.implements Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isMetric:Ljava/lang/Boolean;

.field jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

.field private reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/DailyRidesActivity;)Llayout/adapters/FitnessDailyRidesListAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lbike/smarthalo/app/models/RideDay;Z)Landroid/content/Intent;
    .locals 2

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/DailyRidesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "rideDay"

    .line 251
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "isMetric"

    .line 252
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->finish()V

    const v0, 0x7f010043

    const v1, 0x7f010046

    .line 241
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->getSelectedRides()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->uploadToStrava(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->getSelectedRides()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->showDialogDeleteRide(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->showSelectAllMenu()V

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onShowSelectionButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$onShowSelectionButtonClicked$5(Lbike/smarthalo/app/activities/DailyRidesActivity;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llayout/adapters/FitnessDailyRidesListAdapter;->setInSelectionMode(Z)V

    .line 132
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onSelectionModeActivated()V

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onSelectionChanged(I)V

    return-void
.end method

.method public static synthetic lambda$showAlertDialog$9(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/models/SHPastRide;I)V
    .locals 2

    .line 270
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 273
    new-array p2, v1, [Lbike/smarthalo/app/models/SHPastRide;

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->showDialogDeleteRide(Ljava/util/List;)V

    goto :goto_0

    .line 275
    :cond_0
    new-array p2, v1, [Lbike/smarthalo/app/models/SHPastRide;

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->uploadToStrava(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$showDialogDeleteRide$7(Lbike/smarthalo/app/activities/DailyRidesActivity;Ljava/util/List;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;->deleteRides(Ljava/util/List;)V

    .line 185
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onSelectionModeDeactivated()V

    return-void
.end method

.method public static synthetic lambda$showSelectAllMenu$6(Lbike/smarthalo/app/activities/DailyRidesActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 144
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->selectAllItems()V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$uploadToStrava$8(Lbike/smarthalo/app/activities/DailyRidesActivity;)V
    .locals 2

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/LinkedAccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onSelectionModeDeactivated()V
    .locals 3

    .line 297
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/adapters/FitnessDailyRidesListAdapter;->setInSelectionMode(Z)V

    .line 298
    invoke-direct {p0, v1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->toggleSelectionMode(Z)V

    .line 300
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->pageTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->selectionModeButtons:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->viewModeButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private onShowSelectionButtonClicked()V
    .locals 3

    .line 130
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$BGXzBLM39YI9vvW4gDJ-nROqYdE;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$BGXzBLM39YI9vvW4gDJ-nROqYdE;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method private showAlertDialog(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 6

    .line 257
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00db

    const/4 v2, 0x0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0367

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v3, Llayout/adapters/ListAlertDialogAdapterItem;

    const v4, 0x7f0800d4

    const v5, 0x7f110136

    invoke-direct {v3, v4, v5}, Llayout/adapters/ListAlertDialogAdapterItem;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Llayout/adapters/ListAlertDialogAdapterItem;

    const v4, 0x7f08025b

    const v5, 0x7f110162

    invoke-direct {v3, v4, v5}, Llayout/adapters/ListAlertDialogAdapterItem;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v3, Llayout/adapters/ListAlertDialogAdapter;

    const/4 v4, 0x0

    new-array v4, v4, [Llayout/adapters/ListAlertDialogAdapterItem;

    .line 268
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Llayout/adapters/ListAlertDialogAdapterItem;

    new-instance v4, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/models/SHPastRide;)V

    const p1, 0x7f0d00dc

    invoke-direct {v3, p0, p1, v2, v4}, Llayout/adapters/ListAlertDialogAdapter;-><init>(Landroid/content/Context;I[Llayout/adapters/ListAlertDialogAdapterItem;Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;)V

    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 283
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showDialogDeleteRide(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const v0, 0x7f110138

    const v3, 0x7f110138

    goto :goto_0

    :cond_1
    const v0, 0x7f11013c

    const v3, 0x7f11013c

    .line 173
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    const v0, 0x7f110137

    const v4, 0x7f110137

    goto :goto_1

    :cond_2
    const v0, 0x7f11013b

    const v4, 0x7f11013b

    :goto_1
    const v5, 0x7f11013a

    const v6, 0x7f110139

    .line 177
    new-instance v7, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$IkKyptNkYR_F4fpobhyIs03uND0;

    invoke-direct {v7, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$IkKyptNkYR_F4fpobhyIs03uND0;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;Ljava/util/List;)V

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method private showSelectAllMenu()V
    .locals 3

    .line 138
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    const v1, 0x7f1202cc

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v2, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v2, v2, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->detailsMenu:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 141
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f110161

    .line 142
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/activities/DailyRidesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$qjc-YUaNxzoQ9kk8U1BAYKBh6zk;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$qjc-YUaNxzoQ9kk8U1BAYKBh6zk;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    .line 143
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 148
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method private showStravaToast(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const p1, 0x7f11014e

    goto :goto_0

    :cond_0
    const p1, 0x7f110160

    :goto_0
    const v0, 0x7f080255

    .line 196
    invoke-static {p0, v0, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showAppToast(Landroid/app/Activity;II)V

    return-void
.end method

.method private toggleSelectionMode(Z)V
    .locals 10

    .line 313
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->dailyRidesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 319
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    const/16 v4, 0x28

    .line 323
    invoke-static {p0, v4}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v4

    :goto_0
    if-gt v1, v0, :cond_4

    .line 326
    iget-object v5, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v5, v5, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->dailyRidesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 327
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 330
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    neg-int v8, v4

    int-to-float v8, v8

    invoke-direct {v7, v8, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_1
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    neg-int v8, v4

    int-to-float v8, v8

    invoke-direct {v7, v6, v8, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 335
    :goto_1
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    const-wide/16 v8, 0x12c

    .line 336
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v6, 0x1

    .line 337
    invoke-virtual {v7, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 338
    invoke-virtual {v7, v6}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 340
    new-instance v6, Lbike/smarthalo/app/activities/DailyRidesActivity$1;

    invoke-direct {v6, p0, p1, v5}, Lbike/smarthalo/app/activities/DailyRidesActivity$1;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;ZLlayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;)V

    invoke-virtual {v7, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    .line 362
    iget-object v8, v5, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionContainer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v6, v5, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->itemDetails:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 365
    :cond_2
    iget-object v8, v5, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 368
    :goto_2
    iget-object v5, v5, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->translationContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private uploadToStrava(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;->canUploadToStrava()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->showStravaToast(I)V

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;->uploadToStrava(Ljava/util/List;)V

    .line 214
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onSelectionModeDeactivated()V

    goto :goto_0

    :cond_0
    const v1, 0x7f110153

    const v2, 0x7f110152

    const v3, 0x7f110151

    const v4, 0x7f110150

    .line 218
    new-instance v5, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$p1RTZBDJM7xQZqa4hjbrl5XmWa4;

    invoke-direct {v5, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$p1RTZBDJM7xQZqa4hjbrl5XmWa4;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAllRidesDeleted()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->finishActivity()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 232
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {v0}, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->onSelectionModeDeactivated()V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->finishActivity()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 83
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    .line 84
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/app/Activity;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    .line 86
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 87
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->dailyRidesList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->backButton:Landroid/widget/ImageButton;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$5WlLNNpkdhHGwXpLIfvWp9vFZJA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$5WlLNNpkdhHGwXpLIfvWp9vFZJA;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->uploadToStrava:Landroid/widget/ImageButton;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$geOLR1hsZF-1fjDe8hh8FuWOj_Y;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$geOLR1hsZF-1fjDe8hh8FuWOj_Y;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->deleteRides:Landroid/widget/ImageButton;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$WSZNr6x1SjC_WM0qgsBkMqBdhiU;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$WSZNr6x1SjC_WM0qgsBkMqBdhiU;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->detailsMenu:Landroid/widget/ImageButton;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$V1KP6x86MrpEYu7R5iBa4LiY02k;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$V1KP6x86MrpEYu7R5iBa4LiY02k;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->showSelectionMode:Landroid/widget/ImageButton;

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$W4AV4MXJOSVet3gzl4S-Kp_7jlc;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$W4AV4MXJOSVet3gzl4S-Kp_7jlc;-><init>(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "rideDay"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "rideDay"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/RideDay;

    const-string v1, "isMetric"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->isMetric:Ljava/lang/Boolean;

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_1

    .line 106
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE, d MMMM yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Lbike/smarthalo/app/models/RideDay;->getDay()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->title:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->pageTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v4, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    iget-object v7, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v8, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    iget-object v9, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v1, p0

    move-object v3, p0

    invoke-static/range {v1 .. v9}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->buildPresenter(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/models/RideDay;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRideSelected(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->showAlertDialog(Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->pageTitle:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSelectionModeActivated()V
    .locals 2

    const/4 v0, 0x1

    .line 307
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity;->toggleSelectionMode(Z)V

    .line 308
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->selectionModeButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->viewModeButtons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 117
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onStart()V

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "FitnessRide"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 124
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onDispose()V

    return-void
.end method

.method public showDailyRides(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Llayout/adapters/FitnessDailyRidesListAdapter;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->isMetric:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, p0}, Llayout/adapters/FitnessDailyRidesListAdapter;-><init>(Ljava/util/List;Ljava/lang/Boolean;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    .line 156
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityDailyRidesBinding;->dailyRidesList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->listAdapter:Llayout/adapters/FitnessDailyRidesListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showErrorMessage()V
    .locals 0

    .line 246
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showErrorToast(Landroid/content/Context;)V

    return-void
.end method
