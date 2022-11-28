.class public final synthetic Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;
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

    invoke-static {}, Lbike/smarthalo/app/models/AuthLevel;->values()[Lbike/smarthalo/app/models/AuthLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->PUBLIC:Lbike/smarthalo/app/models/AuthLevel;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/AuthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->BETA:Lbike/smarthalo/app/models/AuthLevel;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/AuthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->ALPHA:Lbike/smarthalo/app/models/AuthLevel;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/AuthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
