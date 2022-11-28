.class synthetic Llayout/MapViewFragment$4;
.super Ljava/lang/Object;
.source "MapViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/MapViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$app$models$PathProperty:[I

.field static final synthetic $SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1245
    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    sget-object v4, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v5}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 427
    :catch_3
    invoke-static {}, Lbike/smarthalo/app/models/PathProperty;->values()[Lbike/smarthalo/app/models/PathProperty;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    :try_start_4
    sget-object v4, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v5, Lbike/smarthalo/app/models/PathProperty;->Grades:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v5}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v4, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Surface:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
