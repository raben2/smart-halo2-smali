.class public Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;
.super Ljava/lang/Object;
.source "ValhallaBicycleCostingOptions.java"


# instance fields
.field public avoidBadSurfaces:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avoid_bad_surfaces"
    .end annotation
.end field

.field public bicycleType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bicycle_type"
    .end annotation
.end field

.field public useFerry:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_ferry"
    .end annotation
.end field

.field public useHills:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_hills"
    .end annotation
.end field

.field public useRoads:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_roads"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->CITY:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    .line 13
    invoke-virtual {v0}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->bicycleType:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useRoads:F

    .line 16
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useHills:F

    .line 18
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useFerry:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 20
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->avoidBadSurfaces:F

    return-void
.end method
