.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;

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

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$isImperialCountry$4(Lbike/smarthalo/app/models/GenericResponse;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
