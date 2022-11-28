.class public final synthetic Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lbike/smarthalo/navigation/models/NavigationMode;->values()[Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
