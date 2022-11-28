.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;

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

    check-cast p1, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->lambda$onDirectionServiceConnected$1(Lbike/smarthalo/app/models/PresentationNavigationState;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
