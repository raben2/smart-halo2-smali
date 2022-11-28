.class public Lbike/smarthalo/app/helpers/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLatLngFromProgress(IFDDLandroid/location/Location;)Lbike/smarthalo/app/models/SHLatLng;
    .locals 6

    .line 86
    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    rsub-int/lit8 p0, p0, 0x64

    int-to-double v2, p0

    mul-double p2, p2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v4

    float-to-double p0, p1

    div-double/2addr p2, p0

    sub-double/2addr v0, p2

    .line 87
    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    mul-double p4, p4, v2

    div-double/2addr p4, v4

    div-double/2addr p4, p0

    sub-double/2addr p2, p4

    .line 88
    new-instance p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-direct {p0, v0, v1, p2, p3}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    return-object p0
.end method

.method private static getColorForCycleLane(ILandroid/content/Context;)I
    .locals 1

    const v0, 0x7f060156

    packed-switch p0, :pswitch_data_0

    .line 277
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_0
    const p0, 0x7f060048

    .line 276
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_1
    const p0, 0x7f060128

    .line 275
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_2
    const p0, 0x7f0600ea

    .line 274
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 273
    :pswitch_3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getColorForProperty(FLbike/smarthalo/app/models/PathProperty;Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x3

    .line 252
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 254
    sget-object v1, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0xff

    packed-switch p1, :pswitch_data_0

    .line 266
    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0

    :pswitch_0
    float-to-int p0, p0

    .line 263
    invoke-static {p0, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getColorForSurface(ILandroid/content/Context;)I

    move-result p0

    return p0

    :pswitch_1
    float-to-int p0, p0

    .line 260
    invoke-static {p0, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getColorForCycleLane(ILandroid/content/Context;)I

    move-result p0

    return p0

    .line 256
    :pswitch_2
    invoke-static {p0}, Lbike/smarthalo/app/helpers/MapHelper;->getGradeColor(F)[F

    move-result-object p0

    .line 257
    invoke-static {v1, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private static getColorForSurface(ILandroid/content/Context;)I
    .locals 1

    const v0, 0x7f060156

    packed-switch p0, :pswitch_data_0

    .line 291
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 290
    :pswitch_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_1
    const p0, 0x7f060138

    .line 289
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_2
    const p0, 0x7f0600ea

    .line 288
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_3
    const p0, 0x7f060074

    .line 287
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_4
    const p0, 0x7f060044

    .line 286
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_5
    const p0, 0x7f060139

    .line 285
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_6
    const p0, 0x7f06013b

    .line 284
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_7
    const p0, 0x7f06013a

    .line 283
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCompassPointerDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v0, 0x7f0800c5

    .line 115
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0800c2

    .line 116
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static getCompassPointerDrawableFromProgress(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v0, 0x7f0800c5

    .line 106
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0800c2

    .line 107
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 109
    invoke-static {p0}, Lbike/smarthalo/app/helpers/MapHelper;->getPointerColorFromProgress(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private static getCurrentPropertyType(Ljava/util/List;Lbike/smarthalo/app/models/PathProperty;I)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Lbike/smarthalo/app/models/PathProperty;",
            "I)F"
        }
    .end annotation

    .line 300
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    return v1

    .line 304
    :cond_0
    sget-object v0, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 307
    :pswitch_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLatLng;

    iget-object p1, p1, Lbike/smarthalo/app/models/SHLatLng;->surface:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    if-eqz p1, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    iget-object p0, p0, Lbike/smarthalo/app/models/SHLatLng;->surface:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->getType()I

    move-result p0

    int-to-float v1, p0

    :cond_1
    return v1

    .line 306
    :pswitch_1
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLatLng;

    iget-object p1, p1, Lbike/smarthalo/app/models/SHLatLng;->cycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    if-eqz p1, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    iget-object p0, p0, Lbike/smarthalo/app/models/SHLatLng;->cycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->getType()I

    move-result p0

    int-to-float v1, p0

    :cond_2
    return v1

    .line 305
    :pswitch_2
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    iget p0, p0, Lbike/smarthalo/app/models/SHLatLng;->grade:F

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisplayTimeHtml(FLandroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    if-eqz p1, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    .line 217
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const v0, 0x7f1102a1

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1102a2

    .line 219
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%06X"

    const/4 v3, 0x1

    .line 220
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xffffff

    const v6, 0x7f0602d8

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    and-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3c

    if-lt p0, v2, :cond_0

    .line 223
    rem-int/lit8 v3, p0, 0x3c

    .line 224
    div-int/2addr p0, v2

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, p1}, Lbike/smarthalo/app/helpers/MapHelper;->getDisplayTimeHtml(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, p1}, Lbike/smarthalo/app/helpers/MapHelper;->getDisplayTimeHtml(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {v1, p0, p1}, Lbike/smarthalo/app/helpers/MapHelper;->getDisplayTimeHtml(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getDisplayTimeHtml(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "</font> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDistanceToManoeuverString(ZD)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " m"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double p1, p1, v2

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " km"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide v0, 0x40730ccccccccccdL    # 304.8

    cmpg-double p0, p1, v0

    if-gez p0, :cond_2

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeetDisplay(Ljava/lang/Double;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ft"

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMilesDisplay(Ljava/lang/Double;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " miles"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getGradeColor(F)[F
    .locals 5

    const/4 v0, 0x3

    .line 248
    new-array v0, v0, [F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float p0, p0, v1

    float-to-double v1, p0

    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double v1, v3, v1

    sub-double/2addr v3, v1

    double-to-float p0, v3

    const v1, 0x3fb4b4b5

    mul-float p0, p0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    return-object v0
.end method

.method private static getGradeZIndex(F)F
    .locals 1

    const/high16 v0, 0x41300000    # 11.0f

    add-float/2addr p0, v0

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static getMapPathsFromGradients(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/PolylineGradient;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PolylineGradient;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v3, v1, Lbike/smarthalo/app/models/PolylineGradient;->startLatLng:Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, v1, Lbike/smarthalo/app/models/PolylineGradient;->endLatLng:Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lbike/smarthalo/app/models/SHMapPath;

    iget v1, v1, Lbike/smarthalo/app/models/PolylineGradient;->colour:I

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lbike/smarthalo/app/models/SHMapPath;-><init>(ILjava/util/List;Z)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 78
    iput v1, v3, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getNewCompassPath(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            "Landroid/location/Location;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v2, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v1, v2, :cond_1

    .line 127
    iget-boolean v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->hasReachedOfflineModeOrigin:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Lbike/smarthalo/app/models/SHLatLng;

    iget-object p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p0, Lbike/smarthalo/app/models/SHMapPath;

    const p1, 0x7f06001c

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v1, p2}, Lbike/smarthalo/app/models/SHMapPath;-><init>(ILjava/util/List;Z)V

    .line 134
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object p2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p2

    .line 138
    iget-object p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    invoke-static {p2, p1, p0}, Lbike/smarthalo/app/helpers/MapHelper;->getRemainingColourGradients(FLandroid/location/Location;Landroid/location/Location;)Ljava/util/ArrayList;

    move-result-object p0

    .line 139
    invoke-static {p0}, Lbike/smarthalo/app/helpers/MapHelper;->getMapPathsFromGradients(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object p2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne p2, v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationNavigationState;->getAsTheCrowFliesDistance()F

    move-result p2

    iget-object p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lbike/smarthalo/app/helpers/MapHelper;->getRemainingColourGradients(FLandroid/location/Location;Landroid/location/Location;)Ljava/util/ArrayList;

    move-result-object p0

    .line 143
    invoke-static {p0}, Lbike/smarthalo/app/helpers/MapHelper;->getMapPathsFromGradients(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getNewTurnByTurnMapPaths(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;Lbike/smarthalo/app/models/PathProperty;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            "Landroid/location/Location;",
            "Landroid/content/Context;",
            "Lbike/smarthalo/app/models/PathProperty;",
            ")",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPresentationDirection;

    .line 155
    iget v2, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->endIndex:I

    iget v3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->nextIndex:I

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f060128

    .line 156
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 157
    iget-object v3, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v4, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    if-ne v3, v4, :cond_2

    const v2, 0x7f0600ea

    .line 158
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 161
    :cond_2
    iget-object v3, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v4, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v4, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v3, v4, :cond_3

    const v2, 0x7f0600e9

    .line 164
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 167
    :cond_3
    iget-object v3, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 168
    sget-object v3, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    if-eq p3, v3, :cond_4

    .line 169
    iget-object v1, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-static {v1, p3, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getPropertyMapPaths(Ljava/util/List;Lbike/smarthalo/app/models/PathProperty;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 171
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget v4, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->nextIndex:I

    iget v5, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->startIndex:I

    if-le v4, v5, :cond_8

    iget v4, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->nextIndex:I

    iget v5, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->endIndex:I

    if-ge v4, v5, :cond_8

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v5, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v6, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v6, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v5, v6, :cond_7

    .line 179
    :cond_5
    iget-object v5, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->closestPathLocation:Landroid/location/Location;

    if-eqz v5, :cond_6

    .line 180
    new-instance v5, Lbike/smarthalo/app/models/SHLatLng;

    iget-object v6, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->closestPathLocation:Landroid/location/Location;

    invoke-direct {v5, v6}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_6
    new-instance v5, Lbike/smarthalo/app/models/SHLatLng;

    iget-object v6, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_7
    :goto_1
    iget v5, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->nextIndex:I

    iget v6, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->startIndex:I

    sub-int/2addr v5, v6

    .line 188
    iget-object v6, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 189
    iget-object v7, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-interface {v7, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 193
    :cond_8
    iget-object v4, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    :goto_2
    new-instance v4, Lbike/smarthalo/app/models/SHMapPath;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lbike/smarthalo/app/models/SHMapPath;-><init>(ILjava/util/List;Z)V

    .line 198
    iget-object v2, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v3, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    if-ne v2, v3, :cond_9

    .line 199
    sget-object v2, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    iput-object v2, v4, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    .line 202
    :cond_9
    iget-object v1, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne v1, v2, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    iput v1, v4, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    .line 205
    :cond_a
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-object p1
.end method

.method public static getPointerColorFromProgress(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x5a

    .line 99
    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgress(III)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object p0

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [F

    iget p0, p0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-float p0, p0

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/high16 v1, 0x432f0000    # 175.0f

    aput v1, v0, p0

    const/4 p0, 0x2

    const/high16 v1, 0x43350000    # 181.0f

    aput v1, v0, p0

    const/16 p0, 0xff

    .line 102
    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method private static getProgressForColour(III)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static getPropertyMapPath(Lbike/smarthalo/app/models/PathProperty;FLjava/util/ArrayList;Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;Landroid/content/Context;)Lbike/smarthalo/app/models/SHMapPath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/PathProperty;",
            "F",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;",
            "Landroid/content/Context;",
            ")",
            "Lbike/smarthalo/app/models/SHMapPath;"
        }
    .end annotation

    .line 314
    invoke-static {p1, p0, p4}, Lbike/smarthalo/app/helpers/MapHelper;->getColorForProperty(FLbike/smarthalo/app/models/PathProperty;Landroid/content/Context;)I

    move-result p4

    .line 316
    new-instance v0, Lbike/smarthalo/app/models/SHMapPath;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p2, v1}, Lbike/smarthalo/app/models/SHMapPath;-><init>(ILjava/util/List;Z)V

    .line 317
    sget-object p2, Lbike/smarthalo/app/models/PathProperty;->Grades:Lbike/smarthalo/app/models/PathProperty;

    if-ne p0, p2, :cond_0

    invoke-static {p1}, Lbike/smarthalo/app/helpers/MapHelper;->getGradeZIndex(F)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, v0, Lbike/smarthalo/app/models/SHMapPath;->zIndex:F

    .line 318
    sget-object p1, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    if-ne p0, p1, :cond_1

    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    if-ne p3, p0, :cond_1

    sget-object p0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    goto :goto_1

    :cond_1
    sget-object p0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->FullLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    :goto_1
    iput-object p0, v0, Lbike/smarthalo/app/models/SHMapPath;->pattern:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    return-object v0
.end method

.method public static getPropertyMapPaths(Ljava/util/List;Lbike/smarthalo/app/models/PathProperty;Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Lbike/smarthalo/app/models/PathProperty;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 326
    invoke-static {p0, p1, v1}, Lbike/smarthalo/app/helpers/MapHelper;->getCurrentPropertyType(Ljava/util/List;Lbike/smarthalo/app/models/PathProperty;I)F

    move-result v2

    .line 327
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    iget-object v3, v3, Lbike/smarthalo/app/models/SHLatLng;->use:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 330
    invoke-static {p0, p1, v1}, Lbike/smarthalo/app/helpers/MapHelper;->getCurrentPropertyType(Ljava/util/List;Lbike/smarthalo/app/models/PathProperty;I)F

    move-result v5

    .line 331
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/models/SHLatLng;

    iget-object v6, v6, Lbike/smarthalo/app/models/SHLatLng;->use:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 333
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v7, v2, v5

    if-nez v7, :cond_0

    .line 335
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    sget-object v7, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    if-ne p1, v7, :cond_1

    if-eq v3, v6, :cond_1

    .line 336
    :cond_0
    invoke-static {p1, v2, v4, v3, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getPropertyMapPath(Lbike/smarthalo/app/models/PathProperty;FLjava/util/ArrayList;Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;Landroid/content/Context;)Lbike/smarthalo/app/models/SHMapPath;

    move-result-object v2

    .line 337
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    move v2, v5

    move-object v3, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getRemainingColourGradients(FLandroid/location/Location;Landroid/location/Location;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/location/Location;",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/PolylineGradient;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p1, p2, p0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getAsTheCrowFliesProgress(Landroid/location/Location;Landroid/location/Location;F)I

    move-result p0

    .line 67
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getRemainingColourGradients(ILandroid/location/Location;Landroid/location/Location;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getRemainingColourGradients(ILandroid/location/Location;Landroid/location/Location;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/location/Location;",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/PolylineGradient;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xa

    const/16 v3, 0x5a

    .line 37
    invoke-static {v0, v2, v3}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgress(III)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v4

    const/4 v5, 0x3

    .line 38
    new-array v6, v5, [F

    iget v7, v4, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x432f0000    # 175.0f

    const/4 v9, 0x1

    aput v7, v6, v9

    const/high16 v10, 0x43350000    # 181.0f

    const/4 v11, 0x2

    aput v10, v6, v11

    .line 40
    new-instance v12, Lbike/smarthalo/app/models/PolylineGradient;

    invoke-direct {v12}, Lbike/smarthalo/app/models/PolylineGradient;-><init>()V

    const/16 v13, 0xff

    .line 41
    invoke-static {v13, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    iput v6, v12, Lbike/smarthalo/app/models/PolylineGradient;->colour:I

    .line 42
    new-instance v6, Lbike/smarthalo/app/models/SHLatLng;

    move-object/from16 v14, p1

    invoke-direct {v6, v14}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    iput-object v6, v12, Lbike/smarthalo/app/models/PolylineGradient;->startLatLng:Lbike/smarthalo/app/models/SHLatLng;

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    sub-double v15, v15, v17

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    sub-double v17, v17, v19

    int-to-float v0, v0

    const/high16 v6, 0x42c80000    # 100.0f

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    .line 47
    iget v4, v4, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    add-int/2addr v4, v9

    :goto_0
    if-gt v4, v3, :cond_0

    .line 48
    invoke-static {v4, v2, v3}, Lbike/smarthalo/app/helpers/MapHelper;->getProgressForColour(III)I

    move-result v6

    move/from16 v19, v6

    move/from16 v20, v0

    move-wide/from16 v21, v15

    move-wide/from16 v23, v17

    move-object/from16 v25, p2

    .line 50
    invoke-static/range {v19 .. v25}, Lbike/smarthalo/app/helpers/MapHelper;->createLatLngFromProgress(IFDDLandroid/location/Location;)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v14

    iput-object v14, v12, Lbike/smarthalo/app/models/PolylineGradient;->endLatLng:Lbike/smarthalo/app/models/SHLatLng;

    .line 51
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v12, Lbike/smarthalo/app/models/PolylineGradient;

    invoke-direct {v12}, Lbike/smarthalo/app/models/PolylineGradient;-><init>()V

    .line 54
    new-array v14, v5, [F

    int-to-float v2, v4

    aput v2, v14, v8

    aput v7, v14, v9

    aput v10, v14, v11

    .line 55
    invoke-static {v13, v14}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    iput v2, v12, Lbike/smarthalo/app/models/PolylineGradient;->colour:I

    .line 56
    invoke-static/range {v19 .. v25}, Lbike/smarthalo/app/helpers/MapHelper;->createLatLngFromProgress(IFDDLandroid/location/Location;)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v2

    iput-object v2, v12, Lbike/smarthalo/app/models/PolylineGradient;->startLatLng:Lbike/smarthalo/app/models/SHLatLng;

    add-int/lit8 v4, v4, 0x2

    const/16 v2, 0xa

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/SHLatLng;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    iput-object v0, v12, Lbike/smarthalo/app/models/PolylineGradient;->endLatLng:Lbike/smarthalo/app/models/SHLatLng;

    .line 60
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
