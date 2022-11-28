.class public Lbike/smarthalo/app/presenters/TouchInputsListPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "TouchInputsListPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;


# static fields
.field private static final BASE_TOUCH_INPUT_IMAGE_NAME:Ljava/lang/String; = "touch_input_"

.field private static final TAG:Ljava/lang/String; = "TouchInputsListPresenter"


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private settings:Lbike/smarthalo/app/models/SHSettings;

.field private settingsSubscription:Lio/reactivex/disposables/Disposable;

.field private touchInputItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation
.end field

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;

    .line 51
    iput-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 52
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object p3

    iput-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    .line 54
    new-instance p3, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;

    invoke-direct {p3, p0, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter$1;-><init>(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;)V

    invoke-static {p3, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 33
    iget-object p0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 33
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;
    .locals 1

    .line 72
    new-instance v0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V

    return-object v0
.end method

.method private clearSettingsSubscription()V
    .locals 1

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private createDisplayTouchItemsList(Ljava/util/HashMap;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "S"

    .line 223
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "S"

    .line 224
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SS"

    .line 226
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "SS"

    .line 227
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SSS"

    .line 229
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "SSS"

    .line 230
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SSSS"

    .line 232
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "SSSS"

    .line 233
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getSpacerTouchItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "L"

    .line 237
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const-string v1, "L"

    .line 238
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "LL"

    .line 240
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "LL"

    .line 241
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "LLL"

    .line 243
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string v1, "LLL"

    .line 244
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v1

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "LLLL"

    .line 246
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const-string p1, "LLLL"

    .line 247
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object p1

    :goto_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createTapcodeMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getBellTapcode()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->Horn:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110380

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getLightStateTapcode()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110381

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getLightModeCycleTapcode()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f11037b

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTakeMeHomeTapcode()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationHome:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110384

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_3
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTakeMeToWorkTapcode()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationWork:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110385

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_4
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getNavigationStopTapcode()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationStop:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110393

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_5
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getNavigationModeTapcode()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationMode:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110386

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_6
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getProgressToDestinationTapcode()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 204
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->ProgressToDestination:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110390

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_7
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getLightSettingTapcode()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->LightMode:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110382

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_8
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getClockTapcode()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    sget-object v2, Lbike/smarthalo/app/models/TouchInputItemType;->Clock:Lbike/smarthalo/app/models/TouchInputItemType;

    const v3, 0x7f110379

    invoke-direct {p0, v2, v1, v3}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method

.method private getBellTapcode()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getClockTapcode()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getEmptyTouchItem(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 2

    .line 265
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-direct {v0}, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;-><init>()V

    .line 267
    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    .line 268
    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    iput-object v1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 269
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getSmartHaloIcon(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    .line 270
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTapcodeDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    .line 271
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110388

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method private getLightModeCycleTapcode()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLightSettingTapcode()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLightStateTapcode()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNavigationModeTapcode()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNavigationStopTapcode()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getProgressToDestinationTapcode()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSmartHaloIcon(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch_input_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getSpacerTouchItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 2

    .line 277
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-direct {v0}, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;-><init>()V

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    return-object v0
.end method

.method private getTakeMeHomeTapcode()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTakeMeToWorkTapcode()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTapcodeDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "S"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110375

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110376

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 301
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110373

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110374

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const-string p1, ""

    return-object p1
.end method

.method private getTouchItem(Lbike/smarthalo/app/models/TouchInputItemType;Ljava/lang/String;I)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 1

    .line 253
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-direct {v0}, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;-><init>()V

    .line 255
    iput-object p2, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    .line 256
    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 257
    invoke-direct {p0, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getSmartHaloIcon(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    .line 258
    invoke-direct {p0, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->getTapcodeDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    .line 259
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$setUpSettingsSubscription$0(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;Lbike/smarthalo/app/models/SHSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    .line 98
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->setUpTapcodeList()V

    return-void
.end method

.method private setUpSettingsSubscription()V
    .locals 4

    .line 88
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->clearSettingsSubscription()V

    .line 90
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 92
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$TouchInputsListPresenter$X6RYtmcwDTa_qwqxmzMx8tx_eas;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$TouchInputsListPresenter$X6RYtmcwDTa_qwqxmzMx8tx_eas;-><init>(Lbike/smarthalo/app/presenters/TouchInputsListPresenter;)V

    .line 95
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private setUpTapcodeList()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->createTapcodeMap()Ljava/util/HashMap;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->createDisplayTouchItemsList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->touchInputItems:Ljava/util/List;

    .line 161
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->touchInputItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;->onTouchInputItemsReady(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getTouchInputItem(Lbike/smarthalo/app/models/TouchInputItemType;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 3

    .line 323
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->touchInputItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    .line 324
    iget-object v2, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTouchInputItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->touchInputItems:Ljava/util/List;

    return-object v0
.end method

.method public getTouchSoundEnabled()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isTouchSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getTouchSoundVolume()I
    .locals 1

    .line 115
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->settings:Lbike/smarthalo/app/models/SHSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$touchSoundVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0
.end method

.method public onTouchSoundUpdated(IZ)V
    .locals 1

    const-string v0, "isTouchSoundEnabled"

    .line 309
    invoke-virtual {p0, v0, p2}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->updateSetting(Ljava/lang/String;Z)V

    const-string v0, "touchSoundVolume"

    .line 310
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->updateSetting(Ljava/lang/String;I)V

    .line 311
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateTouchSoundsSettings(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onViewPaused()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->clearSettingsSubscription()V

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->setUpSettingsSubscription()V

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsListPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method
