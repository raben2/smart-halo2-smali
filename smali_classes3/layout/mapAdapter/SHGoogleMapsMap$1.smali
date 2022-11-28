.class Llayout/mapAdapter/SHGoogleMapsMap$1;
.super Ljava/lang/Object;
.source "SHGoogleMapsMap.java"

# interfaces
.implements Llayout/mapAdapter/MapProviderContract$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/mapAdapter/SHGoogleMapsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/mapAdapter/SHGoogleMapsMap;


# direct methods
.method constructor <init>(Llayout/mapAdapter/SHGoogleMapsMap;)V
    .locals 0

    .line 347
    iput-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V
    .locals 8

    .line 415
    sget-object v0, Llayout/mapAdapter/SHGoogleMapsMap$2;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    invoke-virtual {p4}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object v4, p5

    goto :goto_4

    :pswitch_0
    if-eqz p5, :cond_0

    const p4, 0x7f080070

    goto :goto_0

    :cond_0
    const p4, 0x7f08006e

    .line 438
    :goto_0
    sget-object p5, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFlattest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-object v4, p5

    goto :goto_4

    :pswitch_1
    if-eqz p5, :cond_1

    const p4, 0x7f08006c

    goto :goto_1

    :cond_1
    const p4, 0x7f08006a

    .line 432
    :goto_1
    sget-object p5, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFastest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-object v4, p5

    goto :goto_4

    :pswitch_2
    if-eqz p5, :cond_2

    const p4, 0x7f08007a

    goto :goto_2

    :cond_2
    const p4, 0x7f080078

    .line 426
    :goto_2
    sget-object p5, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteSafest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-object v4, p5

    goto :goto_4

    :pswitch_3
    if-eqz p5, :cond_3

    const p4, 0x7f080076

    goto :goto_3

    :cond_3
    const p4, 0x7f080074

    .line 420
    :goto_3
    sget-object p5, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteRecommended:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    move-object v4, p5

    :goto_4
    if-eqz p4, :cond_4

    if-eqz v4, :cond_4

    .line 442
    iget-object p5, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {p5}, Llayout/mapAdapter/SHGoogleMapsMap;->access$100(Llayout/mapAdapter/SHGoogleMapsMap;)Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p4}, Lbike/smarthalo/app/helpers/BitmapHelper;->getBitMapFromDrawableShape(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 443
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    const/4 v5, 0x0

    const v6, 0x3f733333    # 0.95f

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Llayout/mapAdapter/SHGoogleMapsMap;->access$300(Llayout/mapAdapter/SHGoogleMapsMap;Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;FFLandroid/graphics/Bitmap;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
    .locals 10

    if-eqz p1, :cond_1

    const v0, 0x3f733333    # 0.95f

    const/4 v1, 0x0

    .line 376
    sget-object v2, Llayout/mapAdapter/SHGoogleMapsMap$2;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MapMarkerType:[I

    invoke-virtual {p4}, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_0

    const v8, 0x3f733333    # 0.95f

    goto :goto_0

    :pswitch_0
    const v1, 0x7f080222

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0800dc

    const v8, 0x3f733333    # 0.95f

    goto :goto_0

    :pswitch_2
    const v1, 0x7f080094

    const v8, 0x3f733333    # 0.95f

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0801d5

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0801d4

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_5
    const v1, 0x7f0801d2

    const/high16 v8, 0x3f000000    # 0.5f

    .line 401
    :goto_0
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$100(Llayout/mapAdapter/SHGoogleMapsMap;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$100(Llayout/mapAdapter/SHGoogleMapsMap;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/BitmapHelper;->getBitMapFromDrawableShape(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_0
    move-object v9, v0

    .line 407
    :goto_1
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v9}, Llayout/mapAdapter/SHGoogleMapsMap;->access$300(Llayout/mapAdapter/SHGoogleMapsMap;Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;FFLandroid/graphics/Bitmap;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public centerOnLocation(Landroid/location/Location;)V
    .locals 1

    .line 350
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->access$000(Llayout/mapAdapter/SHGoogleMapsMap;Landroid/location/Location;)V

    return-void
.end method

.method public drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public drawPaths(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHMapPath;

    .line 483
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v2, v1}, Llayout/mapAdapter/SHGoogleMapsMap;->drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
    .locals 4

    .line 449
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 450
    iget-object v3, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v3}, Llayout/mapAdapter/SHGoogleMapsMap;->access$400(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 453
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 454
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePath(Ljava/lang/String;)V
    .locals 3

    .line 506
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$500(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 507
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 510
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$700(Llayout/mapAdapter/SHGoogleMapsMap;Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public removePaths(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$500(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 519
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 523
    iget-object v2, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Llayout/mapAdapter/SHGoogleMapsMap;->access$700(Llayout/mapAdapter/SHGoogleMapsMap;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public replacePoints(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$500(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 492
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-static {p2}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLngs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 495
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {p1}, Llayout/mapAdapter/SHGoogleMapsMap;->access$600(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_1

    .line 497
    invoke-static {p2}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLngs(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public setBounds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 361
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLatLng;

    .line 363
    invoke-static {v1}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLng(Lbike/smarthalo/app/models/SHLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {p1}, Llayout/mapAdapter/SHGoogleMapsMap;->access$200(Llayout/mapAdapter/SHGoogleMapsMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iget-object v1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v1}, Llayout/mapAdapter/SHGoogleMapsMap;->access$100(Llayout/mapAdapter/SHGoogleMapsMap;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x69

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_1
    return-void
.end method

.method public setUpFollowingCamera(ZLandroid/location/Location;)V
    .locals 0

    .line 355
    iget-object p1, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {p1, p2}, Llayout/mapAdapter/SHGoogleMapsMap;->access$000(Llayout/mapAdapter/SHGoogleMapsMap;Landroid/location/Location;)V

    return-void
.end method

.method public showMarkerInfo(Ljava/lang/String;)V
    .locals 4

    .line 462
    iget-object v0, p0, Llayout/mapAdapter/SHGoogleMapsMap$1;->this$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->access$400(Llayout/mapAdapter/SHGoogleMapsMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 464
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 465
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    :cond_2
    return-void
.end method
