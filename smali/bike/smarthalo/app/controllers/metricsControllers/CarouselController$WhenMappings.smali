.class public final synthetic Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->values()[Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Unknown:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    return-void
.end method
