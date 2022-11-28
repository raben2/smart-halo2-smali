.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$observeRideDeleted$7(Lio/realm/RealmObject;)Z

    move-result p1

    return p1
.end method
