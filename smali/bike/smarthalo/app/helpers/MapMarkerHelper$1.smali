.class synthetic Lbike/smarthalo/app/helpers/MapMarkerHelper$1;
.super Ljava/lang/Object;
.source "MapMarkerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/helpers/MapMarkerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->values()[Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    :try_start_0
    sget-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFastest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFlattest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteRecommended:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteSafest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
