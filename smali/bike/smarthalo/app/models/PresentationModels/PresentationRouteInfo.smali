.class public Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;
.super Ljava/lang/Object;
.source "PresentationRouteInfo.java"


# instance fields
.field public distance:Ljava/lang/Float;

.field public duration:Ljava/lang/Long;

.field public type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Float;Ljava/lang/Long;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 14
    iput-object p2, p0, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->distance:Ljava/lang/Float;

    .line 15
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->duration:Ljava/lang/Long;

    return-void
.end method
