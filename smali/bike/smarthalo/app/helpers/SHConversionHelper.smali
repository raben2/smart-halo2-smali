.class public Lbike/smarthalo/app/helpers/SHConversionHelper;
.super Ljava/lang/Object;
.source "SHConversionHelper.java"


# static fields
.field public static final CENTIMETERS_IN_METERS:D = 100.0

.field public static final CM:Ljava/lang/String; = "cm"

.field public static final FT:Ljava/lang/String; = "\'"

.field public static final IN:Ljava/lang/String; = "\""

.field public static final INCHES_IN_CENTIMETER:D = 2.54

.field public static final INCHES_IN_FOOT:I = 0xc

.field public static final KG:Ljava/lang/String; = "kg"

.field public static final LBS:Ljava/lang/String; = "lbs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centimeterStringToCentimeters(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "cm"

    const-string v1, ""

    .line 258
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static centimetersStringToFeetAndInchesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0\'0\""

    return-object p0

    .line 266
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimeterStringToCentimeters(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimetersToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static centimetersToCentimetersString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "cm"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0 cm"

    return-object p0
.end method

.method public static centimetersToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 220
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimetersToInches(Ljava/lang/Integer;)I

    move-result p0

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static centimetersToInches(Ljava/lang/Integer;)I
    .locals 4

    if-eqz p0, :cond_1

    .line 303
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static centimetersToIntFeet(I)I
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    .line 311
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static centimetersToIntMeters(I)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static centimetersToModuloCentimeters(I)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    rem-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static centimetersToModuloInches(I)I
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    double-to-int p0, v0

    .line 317
    rem-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static coordinateFromCoords(Landroid/location/Location;Ljava/lang/Double;Ljava/lang/Double;)Landroid/location/Location;
    .locals 12

    .line 341
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40b8e30000000000L    # 6371.0

    div-double/2addr v0, v2

    .line 342
    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->degreesToRadians(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 343
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->degreesToRadians(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 344
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->degreesToRadians(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 346
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    .line 347
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double p0, p0, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double p0, p0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v2, v2, v8

    sub-double/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr v4, p0

    const-wide p0, 0x4022d97c7f3321d2L    # 9.42477796076938

    add-double/2addr v4, p0

    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v4, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v4, p0

    .line 351
    new-instance p0, Landroid/location/Location;

    const-string p1, "gps"

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->radiansToDegrees(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 353
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->radiansToDegrees(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    return-object p0
.end method

.method public static degreesToRadians(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4

    .line 333
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static feetAndInchesStringToCentimeters(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\""

    const-string v2, ""

    .line 282
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\'"

    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 284
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToCentimeters(Ljava/lang/Integer;)I

    move-result v0

    .line 286
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 287
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToCentimeters(Ljava/lang/Integer;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_1
    return v0
.end method

.method public static feetAndInchesStringToCentimetersString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0cm"

    return-object p0

    .line 274
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->feetAndInchesStringToCentimeters(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->centimetersToCentimetersString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static feetAndInchesToCentimeter(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p1

    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToCentimeters(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static feetToMeters(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x400a3f28fd4f4b98L    # 3.2808399

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static getAverageSpeed(FI)F
    .locals 0

    .line 365
    div-int/lit16 p1, p1, 0x3e8

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x40666666    # 3.6f

    mul-float p0, p0, p1

    return p0
.end method

.method public static getDistanceDisplay(ZLjava/lang/Double;)D
    .locals 0

    if-eqz p0, :cond_0

    .line 47
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToKilometersDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMilesDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getDistanceUnit(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103aa

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103ab

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getElevationDisplay(ZLjava/lang/Double;)D
    .locals 0

    if-eqz p0, :cond_0

    .line 59
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMetersDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeetDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getElevationUnit(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103ae

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103af

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLocalizedDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 361
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedDisplay(ZLjava/lang/Double;)D
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kphToKphDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kphToMphDisplay(Ljava/lang/Double;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getSpeedUnit(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103b2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1103b3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static inchesToCentimeters(Ljava/lang/Integer;)I
    .locals 4

    if-eqz p0, :cond_1

    .line 295
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static inchesToFeetAndInchesString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 238
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/lit8 p0, p0, 0xc

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "0\'0\""

    return-object p0
.end method

.method public static kilogramsStringToKilograms(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kg"

    const-string v1, ""

    .line 168
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static kilogramsToKilogramsString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "0 kg"

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "kg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static kilogramsToPounds(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 200
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4001a30fcf80dc33L    # 2.20462

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 201
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static kilogramsToPoundsString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kilogramsToPounds(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lbs"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0 lbs"

    return-object p0
.end method

.method public static kphToKphDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static kphToMphDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3ff9bfdb4cc25072L    # 1.60934

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static metersAndCentimetersToCentimeters(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method public static metersToFeet(I)I
    .locals 2

    int-to-double v0, p0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeetDisplay(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static metersToFeetDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static metersToKilometersDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static metersToMetersDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static metersToMiles(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 128
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4099255c28f5c28fL    # 1609.34

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static metersToMilesDisplay(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMiles(Ljava/lang/Double;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static milesToKm(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3ff9bfdb4cc25072L    # 1.60934

    mul-double v0, v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static mphToKph(Ljava/lang/Double;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 144
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3ff9bfdb4cc25072L    # 1.60934

    mul-double v0, v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static poundsToKilograms(Ljava/lang/Integer;)D
    .locals 4

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4001a30fcf80dc33L    # 2.20462

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static radiansToDegrees(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4

    .line 337
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
