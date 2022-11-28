.class public final synthetic Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;->INSTANCE:Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->lambda$deleteRealm$6(Lio/realm/Realm;)V

    return-void
.end method
