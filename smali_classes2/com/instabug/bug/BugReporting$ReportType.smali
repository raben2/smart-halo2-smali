.class public interface abstract annotation Lcom/instabug/bug/BugReporting$ReportType;
.super Ljava/lang/Object;
.source "BugReporting.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/BugReporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReportType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BUG:I = 0x0

.field public static final FEEDBACK:I = 0x1

.field public static final QUESTION:I = 0x2
