.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;

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

    check-cast p1, Lio/realm/RealmObject;

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$observeRideDeleted$8(Lio/realm/RealmObject;)Lbike/smarthalo/app/models/Ping;

    move-result-object p1

    return-object p1
.end method
