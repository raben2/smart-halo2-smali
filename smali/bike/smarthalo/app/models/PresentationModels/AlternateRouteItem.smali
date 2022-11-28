.class public Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;
.super Ljava/lang/Object;
.source "AlternateRouteItem.java"


# instance fields
.field public isSelected:Z

.field public time:J

.field public type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-wide v0, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->time:J

    iput-wide v0, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->time:J

    .line 25
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 26
    iget-boolean p1, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    iput-boolean p1, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Long;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->time:J

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Long;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p3, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->time:J

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
