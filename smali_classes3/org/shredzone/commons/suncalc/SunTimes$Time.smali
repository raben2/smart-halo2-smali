.class public final enum Lorg/shredzone/commons/suncalc/SunTimes$Time;
.super Ljava/lang/Enum;
.source "SunTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/shredzone/commons/suncalc/SunTimes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/shredzone/commons/suncalc/SunTimes$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum GOLDEN_HOUR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum GOLDEN_HOUR_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum NADIR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum NAUTICAL_DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum NAUTICAL_DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum NIGHT:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum NIGHT_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum SOLAR_NOON:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum SUNRISE:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum SUNRISE_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum SUNSET:Lorg/shredzone/commons/suncalc/SunTimes$Time;

.field public static final enum SUNSET_START:Lorg/shredzone/commons/suncalc/SunTimes$Time;


# instance fields
.field private final angle:Ljava/lang/Double;

.field private final key:Ljava/lang/String;

.field private final rising:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 50
    new-instance v6, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v1, "SUNRISE"

    const-string v3, "sunrise"

    const-wide v7, -0x40155810624dd2f2L    # -0.833

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v6, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNRISE:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 55
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v10, "SUNRISE_END"

    const-string v12, "sunriseEnd"

    const-wide v1, -0x402ccccccccccccdL    # -0.3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNRISE_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 60
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v16, "GOLDEN_HOUR_END"

    const-string v18, "goldenHourEnd"

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v17, 0x2

    const/16 v20, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->GOLDEN_HOUR_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 65
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v10, "SOLAR_NOON"

    const-string v12, "solarNoon"

    const/4 v11, 0x3

    const/4 v13, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SOLAR_NOON:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 70
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v16, "GOLDEN_HOUR"

    const-string v18, "goldenHour"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v17, 0x4

    const/16 v20, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->GOLDEN_HOUR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 75
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v10, "SUNSET_START"

    const-string v12, "sunsetStart"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v11, 0x5

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNSET_START:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 80
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v2, "SUNSET"

    const-string v4, "sunset"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v3, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNSET:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 85
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v8, "DUSK"

    const-string v10, "dusk"

    const-wide/high16 v1, -0x3fe8000000000000L    # -6.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v9, 0x7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 90
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v14, "NAUTICAL_DUSK"

    const-string v16, "nauticalDusk"

    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const/16 v15, 0x8

    const/16 v18, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NAUTICAL_DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 95
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v6, "NIGHT"

    const-string v8, "night"

    const-wide/high16 v11, -0x3fce000000000000L    # -18.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/16 v7, 0x9

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NIGHT:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 100
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v14, "NADIR"

    const-string v16, "nadir"

    const/16 v15, 0xa

    const/16 v17, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NADIR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 105
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v6, "NIGHT_END"

    const-string v8, "nightEnd"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/16 v7, 0xb

    const/4 v10, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NIGHT_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 110
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v12, "NAUTICAL_DAWN"

    const-string v14, "nauticalDawn"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const/16 v13, 0xc

    const/16 v16, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NAUTICAL_DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    .line 115
    new-instance v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const-string v4, "DAWN"

    const-string v6, "dawn"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v5, 0xd

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/shredzone/commons/suncalc/SunTimes$Time;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v0, 0xe

    .line 45
    new-array v0, v0, [Lorg/shredzone/commons/suncalc/SunTimes$Time;

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNRISE:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNRISE_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->GOLDEN_HOUR_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SOLAR_NOON:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->GOLDEN_HOUR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNSET_START:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SUNSET:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NAUTICAL_DUSK:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NIGHT:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NADIR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NIGHT_END:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NAUTICAL_DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/shredzone/commons/suncalc/SunTimes$Time;->DAWN:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->$VALUES:[Lorg/shredzone/commons/suncalc/SunTimes$Time;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Z)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->key:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->angle:Ljava/lang/Double;

    .line 142
    iput-boolean p5, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->rising:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/shredzone/commons/suncalc/SunTimes$Time;
    .locals 5

    .line 128
    invoke-static {}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->values()[Lorg/shredzone/commons/suncalc/SunTimes$Time;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 129
    invoke-virtual {v3}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/shredzone/commons/suncalc/SunTimes$Time;
    .locals 1

    .line 45
    const-class v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;

    return-object p0
.end method

.method public static values()[Lorg/shredzone/commons/suncalc/SunTimes$Time;
    .locals 1

    .line 45
    sget-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->$VALUES:[Lorg/shredzone/commons/suncalc/SunTimes$Time;

    invoke-virtual {v0}, [Lorg/shredzone/commons/suncalc/SunTimes$Time;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/shredzone/commons/suncalc/SunTimes$Time;

    return-object v0
.end method


# virtual methods
.method public getAngle()Ljava/lang/Double;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->angle:Ljava/lang/Double;

    return-object v0
.end method

.method public isRising()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->rising:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->key:Ljava/lang/String;

    return-object v0
.end method
