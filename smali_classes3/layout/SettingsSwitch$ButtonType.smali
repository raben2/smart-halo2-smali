.class final enum Llayout/SettingsSwitch$ButtonType;
.super Ljava/lang/Enum;
.source "SettingsSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/SettingsSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llayout/SettingsSwitch$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llayout/SettingsSwitch$ButtonType;

.field public static final enum LeftButton:Llayout/SettingsSwitch$ButtonType;

.field public static final enum RightButton:Llayout/SettingsSwitch$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 250
    new-instance v0, Llayout/SettingsSwitch$ButtonType;

    const-string v1, "RightButton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llayout/SettingsSwitch$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llayout/SettingsSwitch$ButtonType;->RightButton:Llayout/SettingsSwitch$ButtonType;

    .line 251
    new-instance v0, Llayout/SettingsSwitch$ButtonType;

    const-string v1, "LeftButton"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Llayout/SettingsSwitch$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    const/4 v0, 0x2

    .line 249
    new-array v0, v0, [Llayout/SettingsSwitch$ButtonType;

    sget-object v1, Llayout/SettingsSwitch$ButtonType;->RightButton:Llayout/SettingsSwitch$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    aput-object v1, v0, v3

    sput-object v0, Llayout/SettingsSwitch$ButtonType;->$VALUES:[Llayout/SettingsSwitch$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llayout/SettingsSwitch$ButtonType;
    .locals 1

    .line 249
    const-class v0, Llayout/SettingsSwitch$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llayout/SettingsSwitch$ButtonType;

    return-object p0
.end method

.method public static values()[Llayout/SettingsSwitch$ButtonType;
    .locals 1

    .line 249
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->$VALUES:[Llayout/SettingsSwitch$ButtonType;

    invoke-virtual {v0}, [Llayout/SettingsSwitch$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llayout/SettingsSwitch$ButtonType;

    return-object v0
.end method
