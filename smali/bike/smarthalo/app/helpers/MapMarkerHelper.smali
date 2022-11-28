.class public Lbike/smarthalo/app/helpers/MapMarkerHelper;
.super Ljava/lang/Object;
.source "MapMarkerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRouteType(Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 1

    .line 19
    sget-object v0, Lbike/smarthalo/app/helpers/MapMarkerHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :pswitch_0
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0

    .line 25
    :pswitch_1
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0

    .line 23
    :pswitch_2
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0

    .line 21
    :pswitch_3
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isMarkerAlternateRoute(Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)Z
    .locals 1

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFastest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFlattest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteSafest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteRecommended:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
