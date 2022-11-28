.class public Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geometry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;,
        Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;
    }
.end annotation


# instance fields
.field public location:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public viewport:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;->location:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;->viewport:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;

    return-object v0
.end method
