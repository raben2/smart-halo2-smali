.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/realm/RealmObject;

    invoke-interface {p1}, Lio/realm/internal/ManagableObject;->isValid()Z

    move-result p1

    return p1
.end method
