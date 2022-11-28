.class public Lbike/smarthalo/app/models/SHPresentationDirection;
.super Ljava/lang/Object;
.source "SHPresentationDirection.java"


# instance fields
.field public directionLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation
.end field

.field public endIndex:I

.field public mode:Lbike/smarthalo/navigation/models/TransportationMode;

.field public startIndex:I

.field public type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILbike/smarthalo/navigation/models/TransportationMode;II)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    .line 26
    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object p2

    aget-object p1, p2, p1

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 27
    iput p3, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->startIndex:I

    .line 28
    iput p4, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->endIndex:I

    return-void
.end method


# virtual methods
.method public setDirectionLocation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
