.class public Lbike/smarthalo/app/analytics/AnalyticsEvents$TouchInputs;
.super Ljava/lang/Object;
.source "AnalyticsEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchInputs"
.end annotation


# static fields
.field public static final TOUCH_INPUT_CLOCK:Ljava/lang/String; = "touch_input_clock"

.field public static final TOUCH_INPUT_HORN:Ljava/lang/String; = "touch_input_horn"

.field public static final TOUCH_INPUT_LIGHT_MODE_TOGGLED:Ljava/lang/String; = "touch_input_light_mode_toggled"

.field public static final TOUCH_INPUT_NAV_CANCELLED:Ljava/lang/String; = "touch_input_nav_cancelled"

.field public static final TOUCH_INPUT_NAV_DESTINATION_PROGRESS:Ljava/lang/String; = "touch_input_nav_destination_progress"

.field public static final TOUCH_INPUT_NAV_HOME:Ljava/lang/String; = "touch_input_nav_home"

.field public static final TOUCH_INPUT_NAV_MODE_TOGGLED:Ljava/lang/String; = "touch_input_nav_mode_toggled"

.field public static final TOUCH_INPUT_NAV_WORK:Ljava/lang/String; = "touch_input_nav_work"


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/analytics/AnalyticsEvents;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lbike/smarthalo/app/analytics/AnalyticsEvents$TouchInputs;->this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
