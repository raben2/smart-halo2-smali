.class public interface abstract annotation Lcom/instabug/library/model/session/config/SessionsConfigParameter;
.super Ljava/lang/Object;
.source "SessionsConfigParameter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final MAX_SESSIONS_PER_REQUEST:Ljava/lang/String; = "max_number"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "interval"

.field public static final SYNC_MODE:Ljava/lang/String; = "mode"
