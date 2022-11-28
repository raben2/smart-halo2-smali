.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;

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

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$observePendingRidesUpdates$4(Lio/realm/RealmResults;)Lbike/smarthalo/app/models/Ping;

    move-result-object p1

    return-object p1
.end method
