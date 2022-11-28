.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$observePastRidesUpdates$2(Lio/realm/RealmResults;)Lbike/smarthalo/app/models/Ping;

    move-result-object p1

    return-object p1
.end method
