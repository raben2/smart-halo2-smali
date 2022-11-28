.class public final Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;
.super Ljava/lang/Object;
.source "DeviceColours.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;",
        "",
        "()V",
        "ASSISTANT_COLOURS",
        "Lbike/smarthalo/sdk/models/SHColour;",
        "CLOCK_COLOURS",
        "EXCEPTION",
        "GOAL_COLOUR_ONE",
        "GOAL_COLOUR_TWO",
        "NAVIGATION_GREEN",
        "WHITE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ASSISTANT_COLOURS:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLOCK_COLOURS:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXCEPTION:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GOAL_COLOUR_ONE:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GOAL_COLOUR_TWO:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;

.field public static final NAVIGATION_GREEN:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WHITE:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->INSTANCE:Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0x8f

    const/16 v2, 0xdb

    const/16 v3, 0xc6

    invoke-direct {v0, v1, v2, v3}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->ASSISTANT_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    .line 17
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0xdc

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->CLOCK_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    .line 24
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v3, 0xed

    const/16 v4, 0xff

    invoke-direct {v0, v3, v4, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->GOAL_COLOUR_ONE:Lbike/smarthalo/sdk/models/SHColour;

    .line 31
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v5, 0xd2

    const/16 v6, 0x6e

    invoke-direct {v0, v3, v5, v6}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->GOAL_COLOUR_TWO:Lbike/smarthalo/sdk/models/SHColour;

    .line 38
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v5, 0x43

    invoke-direct {v0, v5, v4, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->NAVIGATION_GREEN:Lbike/smarthalo/sdk/models/SHColour;

    .line 45
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v5, 0xfd

    invoke-direct {v0, v5, v3, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->EXCEPTION:Lbike/smarthalo/sdk/models/SHColour;

    .line 52
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v0, v2, v2, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sput-object v0, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->WHITE:Lbike/smarthalo/sdk/models/SHColour;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
