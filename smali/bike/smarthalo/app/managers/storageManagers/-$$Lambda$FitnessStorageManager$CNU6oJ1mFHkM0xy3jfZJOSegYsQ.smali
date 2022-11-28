.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 0

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$deleteStravaLinkedAccount$11(Lio/realm/Realm;)V

    return-void
.end method
