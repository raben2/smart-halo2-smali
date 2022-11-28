.class public Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;
.super Ljava/lang/Object;
.source "Kopernikus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/shredzone/commons/suncalc/util/Kopernikus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coordinates"
.end annotation


# instance fields
.field public final dec:D

.field public final dist:D

.field public final ra:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 99
    invoke-direct/range {v0 .. v6}, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    .line 104
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    .line 105
    iput-wide p5, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dist:D

    return-void
.end method
