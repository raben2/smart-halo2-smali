.class public Lbike/smarthalo/app/models/SHMapPath;
.super Ljava/lang/Object;
.source "SHMapPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/SHMapPath$Pattern;
    }
.end annotation


# instance fields
.field public color:I

.field public hasBorder:Z

.field public pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation
.end field

.field public zIndex:F


# direct methods
.method public constructor <init>(ILjava/util/List;Lbike/smarthalo/app/models/SHMapPath$Pattern;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Lbike/smarthalo/app/models/SHMapPath$Pattern;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    .line 24
    iput p1, p0, Lbike/smarthalo/app/models/SHMapPath;->color:I

    .line 25
    iput-object p2, p0, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;Z)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    .line 17
    iput p1, p0, Lbike/smarthalo/app/models/SHMapPath;->color:I

    .line 18
    iput-object p2, p0, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    .line 19
    sget-object p1, Lbike/smarthalo/app/models/SHMapPath$Pattern;->FullLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    iput-object p1, p0, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    .line 20
    iput-boolean p3, p0, Lbike/smarthalo/app/models/SHMapPath;->hasBorder:Z

    return-void
.end method
