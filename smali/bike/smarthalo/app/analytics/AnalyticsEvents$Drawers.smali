.class public Lbike/smarthalo/app/analytics/AnalyticsEvents$Drawers;
.super Ljava/lang/Object;
.source "AnalyticsEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Drawers"
.end annotation


# static fields
.field public static final FEEDBACK_PRESSED:Ljava/lang/String; = "feedback_pressed"

.field public static final HELP_MENU_PRESSED:Ljava/lang/String; = "help_menu_pressed"

.field public static final INSTALL_INSTRUCTIONS_PRESSED:Ljava/lang/String; = "install_instructions_pressed"

.field public static final LOGOUT_PRESSED:Ljava/lang/String; = "logout_pressed"

.field public static final NOTIFICATION_DRAWER_OPENED:Ljava/lang/String; = "notification_drawer_opened"

.field public static final PAIRING_SCREEN_ACCESSED:Ljava/lang/String; = "pairing_screen_accessed"


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/analytics/AnalyticsEvents;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lbike/smarthalo/app/analytics/AnalyticsEvents$Drawers;->this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
