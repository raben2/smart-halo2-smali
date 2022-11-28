.class public Llayout/mapAdapter/SHGoogleMapsMap;
.super Landroid/widget/FrameLayout;
.source "SHGoogleMapsMap.java"

# interfaces
.implements Llayout/mapAdapter/MapProviderContract$BaseLayout;


# static fields
.field private static final BACKGROUND_MAIN_POLYLINE_WIDTH:I = 0x7

.field private static final BACKGROUND_SECONDARY_POLYLINE_WIDTH:I = 0x6

.field private static final FOREGROUND_MAIN_POLYLINE_WIDTH:I = 0x5

.field private static final FOREGROUND_SECONDARY_POLYLINE_WIDTH:I = 0x4


# instance fields
.field private consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

.field private context:Landroid/content/Context;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private markers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;>;"
        }
    .end annotation
.end field

.field private polylineBackgrounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private polylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylines:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    .line 347
    new-instance v0, Llayout/mapAdapter/SHGoogleMapsMap$1;

    invoke-direct {v0, p0}, Llayout/mapAdapter/SHGoogleMapsMap$1;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    iput-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    .line 67
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    .line 62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylines:Ljava/util/List;

    .line 63
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    .line 347
    new-instance p2, Llayout/mapAdapter/SHGoogleMapsMap$1;

    invoke-direct {p2, p0}, Llayout/mapAdapter/SHGoogleMapsMap$1;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    iput-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    .line 72
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Llayout/mapAdapter/SHGoogleMapsMap;Landroid/location/Location;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->centerCameraOnLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Llayout/mapAdapter/SHGoogleMapsMap;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Llayout/mapAdapter/SHGoogleMapsMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 49
    iget-object p0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$300(Llayout/mapAdapter/SHGoogleMapsMap;Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;FFLandroid/graphics/Bitmap;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p7}, Llayout/mapAdapter/SHGoogleMapsMap;->drawMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;FFLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iget-object p0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylines:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iget-object p0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$700(Llayout/mapAdapter/SHGoogleMapsMap;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->removeBackgroundPolyline(Ljava/lang/String;)V

    return-void
.end method

.method private centerCameraOnLocation(Landroid/location/Location;)V
    .locals 2

    .line 255
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    invoke-static {p1}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method private drawMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;FFLandroid/graphics/Bitmap;)V
    .locals 1

    .line 555
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 556
    invoke-virtual {v0, p5, p6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p5

    .line 557
    invoke-virtual {p5, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 558
    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 559
    invoke-static {p1}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLng(Lbike/smarthalo/app/models/SHLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    if-eqz p7, :cond_0

    .line 562
    invoke-static {p7}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 565
    :cond_0
    iget-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 567
    iget-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 568
    iget-object p2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 569
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 572
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private drawPolylineOptionsWithBackground(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PolylineOptions;",
            ">;>;)V"
        }
    .end annotation

    .line 532
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 537
    iget-object v1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    .line 538
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_1

    .line 540
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 543
    :goto_1
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    .line 545
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 549
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getBackgroundPolylineOptions(Lbike/smarthalo/app/models/SHMapPath;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 7
    .param p1    # Lbike/smarthalo/app/models/SHMapPath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 289
    iget v0, p1, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x7

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v3, 0x6

    .line 291
    :goto_0
    iget v0, p1, Lbike/smarthalo/app/models/SHMapPath;->color:I

    .line 292
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->darkenColor(I)I

    move-result v2

    iget-object v4, p1, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    iget v5, p1, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    iget-object v6, p1, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    move-object v1, p0

    .line 291
    invoke-direct/range {v1 .. v6}, Llayout/mapAdapter/SHGoogleMapsMap;->getPolylineOptions(IILjava/util/List;FLbike/smarthalo/app/models/SHMapPath$Pattern;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method

.method private getMarkerType(Lcom/google/android/gms/maps/model/Marker;)Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;
    .locals 5

    .line 578
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    .line 579
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 582
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 583
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPolylineOptions(IILjava/util/List;FLbike/smarthalo/app/models/SHMapPath$Pattern;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;F",
            "Lbike/smarthalo/app/models/SHMapPath$Pattern;",
            ")",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 273
    invoke-static {p3}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLngs(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p3

    .line 274
    invoke-virtual {p3, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    iget-object p3, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    .line 275
    invoke-static {p3, p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p4}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 278
    sget-object p2, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    if-ne p5, p2, :cond_0

    const/4 p2, 0x2

    .line 279
    new-array p2, p2, [Lcom/google/android/gms/maps/model/PatternItem;

    const/4 p3, 0x0

    new-instance p4, Lcom/google/android/gms/maps/model/Dash;

    iget-object p5, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    const/16 v0, 0x9

    invoke-static {p5, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p5

    int-to-float p5, p5

    invoke-direct {p4, p5}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    aput-object p4, p2, p3

    const/4 p3, 0x1

    new-instance p4, Lcom/google/android/gms/maps/model/Gap;

    iget-object p5, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-static {p5, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p5

    int-to-float p5, p5

    invoke-direct {p4, p5}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    aput-object p4, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 282
    :cond_0
    new-instance p2, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->startCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 283
    new-instance p2, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->endCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object p1
.end method

.method private getPolylineOptions(Lbike/smarthalo/app/models/SHMapPath;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 7
    .param p1    # Lbike/smarthalo/app/models/SHMapPath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    iget v0, p1, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x5

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v3, 0x4

    .line 263
    :goto_0
    iget v2, p1, Lbike/smarthalo/app/models/SHMapPath;->color:I

    iget-object v4, p1, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    iget v5, p1, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    iget-object v6, p1, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Llayout/mapAdapter/SHGoogleMapsMap;->getPolylineOptions(IILjava/util/List;FLbike/smarthalo/app/models/SHMapPath$Pattern;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .line 76
    iput-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0062

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a01c7

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/MapView;

    iput-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    return-void
.end method

.method public static synthetic lambda$loadGoogleMap$0(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 98
    iput-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 99
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 100
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 101
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 103
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->setLocationLayerVisibility(Z)V

    .line 106
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->setLongPressListener(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 107
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 108
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 109
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->setPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 111
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->setOnPOIClickListener(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 113
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {p1, v0}, Llayout/mapAdapter/MapProviderContract$Consumer;->onMapReady(Llayout/mapAdapter/MapProviderContract$Provider;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setLongPressListener$2(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onMapTouch(Lcom/google/android/gms/maps/model/LatLng;Z)V

    return-void
.end method

.method public static synthetic lambda$setOnMapClickListener$4(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onMapTouch(Lcom/google/android/gms/maps/model/LatLng;Z)V

    return-void
.end method

.method public static synthetic lambda$setOnMarkerClickListener$5(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4

    .line 182
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$description(Ljava/lang/String;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 195
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->getMarkerType(Lcom/google/android/gms/maps/model/Marker;)Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-result-object v1

    .line 197
    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Home:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 198
    invoke-virtual {v0, v3}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    goto :goto_0

    .line 199
    :cond_2
    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Work:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-ne v1, v2, :cond_3

    const/4 v2, 0x2

    .line 200
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    goto :goto_0

    .line 201
    :cond_3
    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Favourite:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    if-ne v1, v2, :cond_4

    const/4 v2, 0x3

    .line 202
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 206
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-interface {p1, v0, v1}, Llayout/mapAdapter/MapProviderContract$Consumer;->onMarkerClicked(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return v3
.end method

.method public static synthetic lambda$setOnPOIClickListener$1(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 3

    .line 134
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 136
    iget-object v1, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 137
    iget-object v1, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 138
    iget-object v1, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->placeId:Ljava/lang/String;

    iput-object v1, v0, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    .line 139
    iget-object p1, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-interface {p1, v0}, Llayout/mapAdapter/MapProviderContract$Consumer;->onPointOfInterestClicked(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method public static synthetic lambda$setPolylineClickListener$3(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 3

    .line 151
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Consumer;->onPolylineClick(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Consumer;->onPolylineClick(Ljava/lang/String;)V

    return-void
.end method

.method private loadGoogleMap(Lcom/google/android/gms/maps/MapView;)V
    .locals 1

    .line 97
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$ueky0pUMFIe_EKbrEBUVqdohKK8;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$ueky0pUMFIe_EKbrEBUVqdohKK8;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method private onMapTouch(Lcom/google/android/gms/maps/model/LatLng;Z)V
    .locals 3

    .line 164
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 166
    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 167
    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    if-eqz p2, :cond_0

    .line 170
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-interface {p1, v0}, Llayout/mapAdapter/MapProviderContract$Consumer;->onMapViewLongPress(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-interface {p1, v0}, Llayout/mapAdapter/MapProviderContract$Consumer;->onMapClick(Lbike/smarthalo/app/models/SHLocation;)V

    :goto_0
    return-void
.end method

.method private removeBackgroundPolyline(Ljava/lang/String;)V
    .locals 1

    .line 300
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylineBackgrounds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    :cond_0
    return-void
.end method

.method private setLocationLayerVisibility(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkLocationsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 128
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setLongPressListener(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 146
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$iAlgZrr-i7bcSZ9TwL3v-smuhSI;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$iAlgZrr-i7bcSZ9TwL3v-smuhSI;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    return-void
.end method

.method private setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 177
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$p_99vKrb2KNMYnxxBsYLSLncwpw;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$p_99vKrb2KNMYnxxBsYLSLncwpw;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void
.end method

.method private setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 181
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$Dyc96rLoG9SWHGCZOubRlIfUEGA;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$Dyc96rLoG9SWHGCZOubRlIfUEGA;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    return-void
.end method

.method private setOnPOIClickListener(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 133
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$i1LoHcPsSxcYu9vZckIrqntO4mo;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$i1LoHcPsSxcYu9vZckIrqntO4mo;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnPoiClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V

    return-void
.end method

.method private setPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 150
    new-instance v0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$tTvY6cqsZSkp9p2Z04hbQOef16M;

    invoke-direct {v0, p0}, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$tTvY6cqsZSkp9p2Z04hbQOef16M;-><init>(Llayout/mapAdapter/SHGoogleMapsMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V

    return-void
.end method


# virtual methods
.method public drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;
    .locals 1

    .line 340
    iget-boolean v0, p1, Lbike/smarthalo/app/models/SHMapPath;->hasBorder:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->drawPathWithBorder(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->drawPathWithoutBorder(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public drawPathWithBorder(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;
    .locals 5

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v3, p1, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    sget-object v4, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    if-eq v3, v4, :cond_0

    .line 329
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->getBackgroundPolylineOptions(Lbike/smarthalo/app/models/SHMapPath;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->getPolylineOptions(Lbike/smarthalo/app/models/SHMapPath;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0, v0, v1}, Llayout/mapAdapter/SHGoogleMapsMap;->drawPolylineOptionsWithBackground(Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 336
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public drawPathWithoutBorder(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;
    .locals 6

    .line 307
    iget v1, p1, Lbike/smarthalo/app/models/SHMapPath;->color:I

    iget-object v3, p1, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    iget v4, p1, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    iget-object v5, p1, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    const/4 v2, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Llayout/mapAdapter/SHGoogleMapsMap;->getPolylineOptions(IILjava/util/List;FLbike/smarthalo/app/models/SHMapPath$Pattern;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 314
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    const/4 v0, 0x1

    .line 315
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    .line 316
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->polylines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialize(Llayout/mapAdapter/MapProviderContract$Consumer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->consumer:Llayout/mapAdapter/MapProviderContract$Consumer;

    .line 86
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-direct {p0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->loadGoogleMap(Lcom/google/android/gms/maps/MapView;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 93
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 216
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 237
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 232
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->setLocationLayerVisibility(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 226
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    const/4 v0, 0x1

    .line 227
    invoke-direct {p0, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->setLocationLayerVisibility(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 241
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 246
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 251
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    return-void
.end method
