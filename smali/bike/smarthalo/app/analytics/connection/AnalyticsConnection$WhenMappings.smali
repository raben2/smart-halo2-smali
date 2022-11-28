.class public final synthetic Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lbike/smarthalo/sdk/models/DeviceModel;->values()[Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lbike/smarthalo/sdk/models/FirmwareType;->values()[Lbike/smarthalo/sdk/models/FirmwareType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
