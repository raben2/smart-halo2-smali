.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;

    invoke-direct {v0}, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;-><init>()V

    sput-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->lambda$setUpSettingsSubscription$1(Lbike/smarthalo/app/models/SHSettings;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
