.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;

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

    check-cast p1, Lbike/smarthalo/app/models/BootloaderInfo;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/BootloaderInfo;->isInitialized()Z

    move-result p1

    return p1
.end method
