.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->lambda$getPastRidesAsync$2()Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;

    move-result-object v0

    return-object v0
.end method
