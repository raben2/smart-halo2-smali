.class public final enum Lcom/instabug/library/internal/module/InstabugLocale;
.super Ljava/lang/Enum;
.source "InstabugLocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/internal/module/InstabugLocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum ARABIC:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum AZERBAIJANI:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum CZECH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum DANISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum ENGLISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum FINNISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum FRENCH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum GERMAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum INDONESIAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum ITALIAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum JAPANESE:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum KOREAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum NETHERLANDS:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum NORWEGIAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum PERSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum POLISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum PORTUGUESE_BRAZIL:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum PORTUGUESE_PORTUGAL:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum RUSSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum SIMPLIFIED_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum SLOVAK:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum SPANISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum SWEDISH:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum TRADITIONAL_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

.field public static final enum TURKISH:Lcom/instabug/library/internal/module/InstabugLocale;


# instance fields
.field private final code:Ljava/lang/String;

.field private final country:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "ENGLISH"

    const-string v2, "en"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->ENGLISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "ARABIC"

    const-string v2, "ar"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->ARABIC:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "GERMAN"

    const-string v2, "de"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->GERMAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "SPANISH"

    const-string v2, "es"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->SPANISH:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 2
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "FRENCH"

    const-string v2, "fr"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->FRENCH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "ITALIAN"

    const-string v2, "it"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->ITALIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "JAPANESE"

    const-string v2, "ja"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->JAPANESE:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "KOREAN"

    const-string v2, "ko"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->KOREAN:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 3
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "POLISH"

    const-string v2, "pl"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->POLISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "PORTUGUESE_BRAZIL"

    const-string v2, "pt"

    const-string v12, "BR"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->PORTUGUESE_BRAZIL:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "PORTUGUESE_PORTUGAL"

    const-string v2, "pt"

    const-string v12, "PT"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->PORTUGUESE_PORTUGAL:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 4
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "RUSSIAN"

    const-string v2, "ru"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->RUSSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "SWEDISH"

    const-string v2, "sv"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->SWEDISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "TURKISH"

    const-string v2, "tr"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->TURKISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "SIMPLIFIED_CHINESE"

    const-string v2, "zh"

    const-string v15, "CN"

    const/16 v12, 0xe

    invoke-direct {v0, v1, v12, v2, v15}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->SIMPLIFIED_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "TRADITIONAL_CHINESE"

    const-string v2, "zh"

    const-string v15, "TW"

    const/16 v12, 0xf

    invoke-direct {v0, v1, v12, v2, v15}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->TRADITIONAL_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 5
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "CZECH"

    const-string v2, "cs"

    const/16 v12, 0x10

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->CZECH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "PERSIAN"

    const-string v2, "fa"

    const/16 v12, 0x11

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->PERSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "INDONESIAN"

    const-string v2, "in"

    const/16 v12, 0x12

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->INDONESIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "DANISH"

    const-string v2, "da"

    const/16 v12, 0x13

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->DANISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "SLOVAK"

    const-string v2, "sk"

    const/16 v12, 0x14

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->SLOVAK:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "NETHERLANDS"

    const-string v2, "nl"

    const/16 v12, 0x15

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->NETHERLANDS:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 6
    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "NORWEGIAN"

    const-string v2, "no"

    const/16 v12, 0x16

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->NORWEGIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "FINNISH"

    const-string v2, "fi"

    const/16 v12, 0x17

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->FINNISH:Lcom/instabug/library/internal/module/InstabugLocale;

    new-instance v0, Lcom/instabug/library/internal/module/InstabugLocale;

    const-string v1, "AZERBAIJANI"

    const-string v2, "az"

    const/16 v12, 0x18

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/internal/module/InstabugLocale;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->AZERBAIJANI:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v1, 0x19

    .line 7
    new-array v1, v1, [Lcom/instabug/library/internal/module/InstabugLocale;

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->ENGLISH:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->ARABIC:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->GERMAN:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->SPANISH:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->FRENCH:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->ITALIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v8

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->JAPANESE:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v9

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->KOREAN:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v10

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->POLISH:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v11

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->PORTUGUESE_BRAZIL:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v13

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->PORTUGUESE_PORTUGAL:Lcom/instabug/library/internal/module/InstabugLocale;

    aput-object v2, v1, v14

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->RUSSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->SWEDISH:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->TURKISH:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->SIMPLIFIED_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->TRADITIONAL_CHINESE:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->CZECH:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->PERSIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->INDONESIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->DANISH:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->SLOVAK:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->NETHERLANDS:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->NORWEGIAN:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->FINNISH:Lcom/instabug/library/internal/module/InstabugLocale;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sput-object v1, Lcom/instabug/library/internal/module/InstabugLocale;->$VALUES:[Lcom/instabug/library/internal/module/InstabugLocale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/internal/module/InstabugLocale;->code:Ljava/lang/String;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/instabug/library/internal/module/InstabugLocale;->country:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/instabug/library/internal/module/InstabugLocale;->code:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/instabug/library/internal/module/InstabugLocale;->country:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/internal/module/InstabugLocale;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/internal/module/InstabugLocale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/internal/module/InstabugLocale;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/internal/module/InstabugLocale;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/module/InstabugLocale;->$VALUES:[Lcom/instabug/library/internal/module/InstabugLocale;

    invoke-virtual {v0}, [Lcom/instabug/library/internal/module/InstabugLocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/internal/module/InstabugLocale;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/module/InstabugLocale;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/module/InstabugLocale;->country:Ljava/lang/String;

    return-object v0
.end method
